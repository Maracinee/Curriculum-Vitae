`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:38:21 11/08/2019 
// Design Name: 
// Module Name:    multiplier 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module multiplier(
	output [14:0] product,
	input [14:0] x,
	input [14:0] y
    );
	
	reg[3:0] x1 = 4'b0000;
	reg[3:0] x2 = 4'b0000;
	reg[3:0] y1 = 4'b0000;
	reg[3:0] y2 = 4'b0000;
	//reg[7:0] xtemp;
	//reg[7:0] ytemp;
	//reg[7:0] A;
	reg[8:0] Q;
	reg[7:0] M;
	//reg Q1;
	//reg[3:0] count;
	//reg[7:0] sum, dif;
	wire[7:0] A_out1;
	wire[8:0] Q_out1;
	wire[7:0] A_out2;
	wire[8:0] Q_out2;
	wire[7:0] A_out3;
	wire[8:0] Q_out3;
	wire[7:0] A_out4;
	wire[8:0] Q_out4;
	wire[7:0] A_out5;
	wire[8:0] Q_out5;
	wire[7:0] A_out6;
	wire[8:0] Q_out6;
	wire[7:0] A_out7;
	wire[8:0] Q_out7;
	wire[7:0] A_out8;
	wire[8:0] Q_out8;

	always @(x or y)
	begin
		case(x[13:7])
			7'b1111110: x1 = 4'b0000;
			7'b0110000: x1	= 4'b0001;
			7'b1101101: x1 = 4'b0010;
			7'b1111001: x1 = 4'b0011;
			7'b0110011: x1 = 4'b0100;
			7'b1011011: x1 = 4'b0101;
			7'b1011111: x1 = 4'b0110;
			7'b1110000: x1 = 4'b0111;
			7'b1111111: x1 = 4'b1000;
			7'b1111011: x1 = 4'b1001;
		endcase
		
		case(x[6:0])
			7'b1111110: x2 = 4'b0000;
			7'b0110000: x2	= 4'b0001;
			7'b1101101: x2 = 4'b0010;
			7'b1111001: x2 = 4'b0011;
			7'b0110011: x2 = 4'b0100;
			7'b1011011: x2 = 4'b0101;
			7'b1011111: x2 = 4'b0110;
			7'b1110000: x2 = 4'b0111;
			7'b1111111: x2 = 4'b1000;
			7'b1111011: x2 = 4'b1001;
		endcase
		
		case(y[13:7])
			7'b1111110: y1 = 4'b0000;
			7'b0110000: y1	= 4'b0001;
			7'b1101101: y1 = 4'b0010;
			7'b1111001: y1 = 4'b0011;
			7'b0110011: y1 = 4'b0100;
			7'b1011011: y1 = 4'b0101;
			7'b1011111: y1 = 4'b0110;
			7'b1110000: y1 = 4'b0111;
			7'b1111111: y1 = 4'b1000;
			7'b1111011: y1 = 4'b1001;
		endcase
		
		case(y[6:0])
			7'b1111110: y2 = 4'b0000;
			7'b0110000: y2	= 4'b0001;
			7'b1101101: y2 = 4'b0010;
			7'b1111001: y2 = 4'b0011;
			7'b0110011: y2 = 4'b0100;
			7'b1011011: y2 = 4'b0101;
			7'b1011111: y2 = 4'b0110;
			7'b1110000: y2 = 4'b0111;
			7'b1111111: y2 = 4'b1000;
			7'b1111011: y2 = 4'b1001;
		endcase
		
		if (x[14] == 1'b1)
		begin
			M <= ~({x1, 1'b0} + {x1, 3'b000} + x2) + 1;
		end
		else
		begin
			M <= {x1, 1'b0} + {x1, 3'b000} + x2;
		end
		
		if (y[14] == 1'b1)
		begin
			Q <= ~({y1, 1'b0} + {y1, 3'b000} + y2) + 1;
		end
		else
		begin
			Q <= {y1, 1'b0} + {y1, 3'b000} + y2;
		end

		/*A <= 8'b0;
		Q1 <= 1'b0;*/

	end
	
		/*for(count = 0; count < 8; count = count + 1)
		begin
			sum <= A + M;
			dif <= A + ~M + 1'b1;
			case({Q[0], Q1})
				2'b0_1: {A, Q, Q1} <= {sum[7], sum, Q};
				2'b1_0: {A, Q, Q1} <= {dif[7], dif, Q};
				2'b1_1, 2'b0_0: {A, Q, Q1} <= {A[7], A, Q};
			endcase
		end*/
		//alu adder (sum, A, M ,1'b0);
		//alu subst (dif, A, ~M, 1'b1);
		
		//assign product = {A, Q};
		
		Booth Booth1(
			.A_in(8'b00000000),
			.M(M),
			.Q_in({Q[7:0],1'b0}),
			.A_out(A_out1),
			.Q_out(Q_out1)
		);
		
		Booth Booth2(
			.A_in(A_out1),
			.M(M),
			.Q_in({Q_out1}),
			.A_out(A_out2),
			.Q_out(Q_out2)
		);
		
		Booth Booth3(
			.A_in(A_out2),
			.M(M),
			.Q_in({Q_out2}),
			.A_out(A_out3),
			.Q_out(Q_out3)
		);
		
		Booth Booth4(
			.A_in(A_out3),
			.M(M),
			.Q_in({Q_out3}),
			.A_out(A_out4),
			.Q_out(Q_out4)
		);
		
		Booth Booth5(
			.A_in(A_out4),
			.M(M),
			.Q_in({Q_out4}),
			.A_out(A_out5),
			.Q_out(Q_out5)
		);
		
		Booth Booth6(
			.A_in(A_out5),
			.M(M),
			.Q_in({Q_out5}),
			.A_out(A_out6),
			.Q_out(Q_out6)
		);
		
		Booth Booth7(
			.A_in(A_out6),
			.M(M),
			.Q_in({Q_out6}),
			.A_out(A_out7),
			.Q_out(Q_out7)
		);
		
		Booth Booth8(
			.A_in(A_out7),
			.M(M),
			.Q_in({Q_out7}),
			.A_out(A_out8),
			.Q_out(Q_out8)
		);
		
		assign product = {A_out8, Q_out8[8:1]};
endmodule
