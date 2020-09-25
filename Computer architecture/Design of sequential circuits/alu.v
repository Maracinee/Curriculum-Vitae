// DESIGN SPECIFIC
`define ALU_BUS_WITH 		16
`define ALU_AMM_ADDR_WITH 	8
`define ALU_AMM_DATA_WITH	8   

// States definition
`define RESET 0
`define H_IN 1
`define P_IN 2
`define DEC_IN 3
`define P_OUT 4
`define ADR_IND 5
`define EXEC 6
`define END 7
`define END2 8
`define OUT 9
`define OUT2 10


// Operations definition
`define ADD	20
`define AND	11
`define OR	12
`define XOR	13
`define NOT 14
`define INC 15
`define DEC 16
`define NEG 17
`define SHR	18
`define SHL 19

/**

== Input packets ==

Header beat
+-----------------+--------------+---------------+------------------+
| reserved[15:12] | opcode[11:8] | reserved[7:6] | nof_operands[5:0]|
+-----------------+--------------+---------------+------------------+

Payload beat
+-----------------+----------+----------------------+
| reserved[15:10] | mod[9:8] | operands/address[7:0]|
+-----------------+----------+----------------------+

== Output packets ==

Header beat

+----------------+----------+-------------+
| reserved[15:5] | error[4] | opcode[3:0] |
+----------------+----------+-------------+

Payload beat

+-----------------+--------------+
| reserved[15:12] | result[11:0] |
+-----------------+--------------+

*/

module alu(
	 // Output interface
    output[`ALU_BUS_WITH - 1:0]		data_out,
	 output									valid_out,
	 output									cmd_out,

	 //Input interface
	 input [`ALU_BUS_WITH - 1:0] data_in,
	 input 							  valid_in,
	 input 							  cmd_in,
	 
	 // AMM interface
	 output 									 amm_read,
	 output[`ALU_AMM_ADDR_WITH - 1:0] amm_address,
	 input [`ALU_AMM_DATA_WITH - 1:0] amm_readdata,
	 input 									 amm_waitrequest,
	 input[1:0] 							 amm_response,
	 
	 
	 //clock and reset interface
	 input clk,
	 input rst_n
    );
	
	// TODO: Implement Not-so-simple ALU
	
	reg[4 - 1:0] state, state_next;
	reg[9 - 1:0] array[0:63];
	reg[5:0] i, counter, counter_dec, j;
	reg[`ALU_BUS_WITH - 1:0] data_out_reg, data_in_reg, header_in_reg;
	reg valid_out_reg, valid_in_reg, cmd_out_reg, cmd_in_reg, show_result;
	reg[`ALU_AMM_ADDR_WITH - 1:0] amm_address_reg, amm_read_reg;
	reg[11:0] result, result_next;
	reg[3:0] opcode;
	reg[5:0] nof_op;
	reg[7:0] op, addr;
	reg in_decoding, can_decode;
	reg ok;
	
	reg err;
	
	always @(posedge clk) begin
		if (!rst_n == 1) begin
			state <= `RESET;
			counter <= 0;
			counter_dec <= 0;
			i <= 0;		
		end else begin
			state <= state_next;
			
			//resetez contoarele de vectori si flag-ul de start pentru amm
			//pe timpul headerului (nonblocant)
			if (valid_in == 1 && cmd_in == 1) begin
				counter <= 0;
				counter_dec <= 0;
				in_decoding <= 0;
			end
			
			//acumulez in vector numerele din payload in functie de numarul
			//de operanzi din header
			if (valid_in == 1 && cmd_in == 0 && counter < header_in_reg[5:0]) begin
				array[counter][7:0] <= data_in[7:0];
				array[counter][8] <= data_in[8];
				counter <= counter + 1;
			end
			
			//algoritmul pentru amm
			
			//verificam flagul de decodare pentru a incepe
			if(can_decode == 1) begin
				//verificam flagul in_decoding pentru a vedea daca este ocupat
				//cu decodarea unui numar pentru a tine constanta magistrala
				if (in_decoding == 0) begin
					if (array[counter_dec][8] == 1) begin
						amm_address_reg <= array[counter_dec][7:0];
						amm_read_reg <= 1;
						in_decoding <= 1;
					end else begin
						counter_dec <= counter_dec + 1;
					end
				end else begin
					//cand ajungem la raspunsul amm, eliberam flagul in_decoding
					//pentru a trece la operandul urmator
					if (amm_waitrequest == 0) begin
						if (amm_response == 0) begin
							array[counter_dec][7:0] = amm_readdata;
							counter_dec <= counter_dec + 1;
							amm_read_reg <= 0;
							amm_address_reg <= 0;
							in_decoding <= 0;
						end else begin
							amm_read_reg <= 0;
							amm_address_reg <= 0;
							state <= `END;
						end
					end
				end
			end
			
		end
	end
	
	always @(*) begin
		
		case(state)
		
		//starea de reset pentru variabilele folosite in restul starilor
		`RESET: begin
			data_out_reg = 0;
			valid_out_reg = 0;
			cmd_out_reg = 0;
			err = 0;
			header_in_reg = 0;
			state_next = `H_IN;
			i = 0;
			result = 0;
		end
		
		//starea care preia headerul
		`H_IN: begin
			data_in_reg = 0;
			err = 0;
			if (valid_in == 1 && cmd_in == 1) begin
				header_in_reg = data_in;
				opcode = data_in[11:8];
				can_decode = 0;
				ok = 1;
				//in caz ca nu exista operanzi, se duce catre starea de eroare
				if (data_in[5:0] == 0) begin
					err = 1;
					state_next = `END;
				end else begin
				//in caz ca headerul este ok, se trece la citire din payload
					state_next = `P_IN;
				end
			end
		end
		
		//starea care verifica daca s-a citit totul din payload folosind contorul
		//care parseaza vectorul
		`P_IN: begin

			if (counter == header_in_reg[5:0]) begin
				//daca s-a terminat, se trece in starea de decodare (amm)
				state_next = `DEC_IN;
				if (ok == 1) begin
					can_decode = 1;
					ok = 0;
				end
			end
			//state_next = `END;
		end
		
		//starea care verifica daca toti operanzii au fost decodati (amm)
		`DEC_IN: begin	
			if (counter_dec == header_in_reg[5:0]) begin
				//daca s-a terminat, se duce in starea care executa operatii
				state_next = `EXEC;
				can_decode = 0;
			end
			
		end
		
		//starea care executa operatiile in functie de opcode din header
		//si acumuleaza in result daca nu mai exista erori (in acest caz
		//se trece in starea de payload de eroare)
		`EXEC: begin
			
			case(header_in_reg[11:8])
				//ADD
				0: begin
					for (i = 0; i < header_in_reg[5:0]; i = i + 1) begin
						result = result + array[i][7:0];
					end
					state_next = `OUT;
				end
				//AND
				1: begin
					result[7:0] = array[0][7:0];
					for (i = 1; i < header_in_reg[5:0]; i = i + 1) begin
						result[7:0] = result[7:0] & array[i][7:0];
					end
					state_next = `OUT;
				end
				//OR
				2: begin
					result[7:0] = array[0][7:0];
					for (i = 1; i < header_in_reg[5:0]; i = i + 1) begin
						result[7:0] = result[7:0] | array[i][7:0];
					end
					state_next = `OUT;
				end
				//XOR
				3: begin
					result[7:0] = array[0][7:0];
					for (i = 1; i < header_in_reg[5:0]; i = i + 1) begin
						result[7:0] = result[7:0] ^ array[i][7:0];
					end
					state_next = `OUT;
				end
				//NOT
				4: begin
					if (header_in_reg[5:0] != 1) begin
						state_next = `END;
					end else begin
						result[7:0] = ~array[0][7:0];
						state_next = `OUT;
					end
				end
				//INC
				5: begin
					if (header_in_reg[5:0] != 1) begin
						state_next = `END;
					end else begin
						result[7:0] = array[0][7:0] + 1;
						state_next = `OUT;
					end
				end
				//DEC
				6: begin
					if (header_in_reg[5:0] != 1) begin
						state_next = `END;
					end else begin
						result[7:0] = array[0][7:0] - 1;
						state_next = `OUT;
					end
				end
				//NEG
				7: begin
					if (header_in_reg[5:0] != 1) begin
						state_next = `END;
					end else begin
						result[7:0] = -array[0][7:0];
						state_next = `OUT;
					end
				end
				//SHR
				8: begin
					if (header_in_reg[5:0] != 2) begin
						state_next = `END;
					end else begin
						result[7:0] = array[0][7:0] >> array[1][7:0];
						state_next = `OUT;
					end
				end
				//SHL
				9: begin
					if (header_in_reg[5:0] != 2) begin
						state_next = `END;
					end else begin
						result[7:0] = array[0][7:0] << array[1][7:0];
						state_next = `OUT;
					end
				end				
				default: begin
					state_next = `END;
				end
				
			endcase
		end
		
		//starea care trimite headerul de output si semnaleaza
		//tranzactia
		`OUT: begin
			data_out_reg = 0;
			data_out_reg[3:0] = header_in_reg[11:8];
			valid_out_reg = 1;
			cmd_out_reg = 1;
			state_next = `OUT2;
		end
		
		//starea care trimite payloadul cu rezultatul operatiei
		`OUT2: begin
			cmd_out_reg = 0;
			data_out_reg = 0;
			data_out_reg[11:0] = result;
			state_next = `RESET;
		end
		
		//starea care trimite headerul de output in caz de eroare
		//si semnaleaza tranzactia
		`END: begin
			data_out_reg = 0;
			data_out_reg[4] = 1;
			data_out_reg[3:0] = header_in_reg[11:8];
			valid_out_reg = 1;
			cmd_out_reg = 1;
			state_next = `END2;
		end
		
		//starea care trimite payloadul in caz de eroare
		`END2: begin
			cmd_out_reg = 0;
			data_out_reg = 0;
			data_out_reg[11:0] = 12'hBAD;
			state_next = `RESET;
		end
		
		endcase
	
	end
	
	//asignam outputurile pe magistrale
	assign valid_out = valid_out_reg;
	assign cmd_out = cmd_out_reg;
	assign data_out = data_out_reg;
	assign amm_address = amm_address_reg;
	assign amm_read = amm_read_reg;
			
endmodule
