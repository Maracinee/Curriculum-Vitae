CoDeSys+M   М                   @        @   2.3.9.62ч    @   ConfigExtension╧          CommConfigEx7             CommConfigExEnd   MEХ                  IB                    % QB                    %   ME_End   CMй      CM_End   CT┼              CT_End   ConfigExtensionEnd/    @                             Ё╞┐^ +    @      ════════             М╟Y        ч"   @   D   C:\Program Files (x86)\3S Software\CODESYS V2.3\Library\Standard.lib          CONCAT               STR1               ¤               STR2               ¤                  CONCAT                                         ╩)МS  А                  CTD           M             ¤            Variable for CD Edge Detection      CD            ¤            Count Down on rising edge    LOAD            ¤ 	           Load Start Value    PV           ¤ 
           Start Value       Q            ¤            Counter reached 0    CV           ¤            Current Counter Value             ╩)МS  А                  CTU           M             ¤             Variable for CU Edge Detection       CU            ¤        
    Count Up    RESET            ¤ 	           Reset Counter to 0    PV           ¤ 
           Counter Limit       Q            ¤            Counter reached the Limit    CV           ¤            Current Counter Value             ╩)МS  А                  CTUD           MU             ¤             Variable for CU Edge Detection    MD             ¤             Variable for CD Edge Detection       CU            ¤ 
       
    Count Up    CD            ¤            Count Down    RESET            ¤            Reset Counter to Null    LOAD            ¤            Load Start Value    PV           ¤            Start Value / Counter Limit       QU            ¤            Counter reached Limit    QD            ¤            Counter reached Null    CV           ¤            Current Counter Value             ╩)МS  А                  DELETE               STR               ¤               LEN           ¤ 	              POS           ¤ 
                 DELETE                                         ╩)МS  А                  F_TRIG           M             ¤                  CLK            ¤            Signal to detect       Q            ¤ 	           Edge detected             ╩)МS  А                  FIND               STR1               ¤ 	              STR2               ¤ 
                 FIND                                     ╩)МS  А                  INSERT               STR1               ¤ 	              STR2               ¤ 
              POS           ¤                  INSERT                                         ╩)МS  А                  LEFT               STR               ¤               SIZE           ¤                  LEFT                                         ╩)МS  А                  LEN               STR               ¤                  LEN                                     ╩)МS  А                  MID               STR               ¤               LEN           ¤ 	              POS           ¤ 
                 MID                                         ╩)МS  А                  R_TRIG           M             ¤                  CLK            ¤            Signal to detect       Q            ¤ 	           Edge detected             ╩)МS  А                  REPLACE               STR1               ¤ 	              STR2               ¤ 
              L           ¤               P           ¤                  REPLACE                                         ╩)МS  А                  RIGHT               STR               ¤               SIZE           ¤                  RIGHT                                         ╩)МS  А                  RS               SET            ¤               RESET1            ¤ 	                 Q1            ¤                        ╩)МS  А                  RTC           M             ¤               DiffTime            ¤                  EN            ¤               PDT           ¤                  Q            ¤               CDT           ¤                        ╩)МS  А                  SEMA           X             ¤                  CLAIM            ¤ 
              RELEASE            ¤                  BUSY            ¤                        ╩)МS  А                  SR               SET1            ¤               RESET            ¤                  Q1            ¤                        ╩)МS  А                  TOF           M             ¤            internal variable 	   StartTime            ¤            internal variable       IN            ¤        ?    starts timer with falling edge, resets timer with rising edge    PT           ¤            time to pass, before Q is set       Q            ¤        2    is FALSE, PT seconds after IN had a falling edge    ET           ¤            elapsed time             ╩)МS  А                  TON           M             ¤            internal variable 	   StartTime            ¤            internal variable       IN            ¤        ?    starts timer with rising edge, resets timer with falling edge    PT           ¤            time to pass, before Q is set       Q            ¤        0    is TRUE, PT seconds after IN had a rising edge    ET           ¤            elapsed time             ╩)МS  А                  TP        	   StartTime            ¤            internal variable       IN            ¤        !    Trigger for Start of the Signal    PT           ¤        '    The length of the High-Signal in 10ms       Q            ¤            The pulse    ET           ¤        &    The current phase of the High-Signal             ╩)МS  А           B   C:\Program Files (x86)\3S Software\CODESYS V2.3\Library\IecSfc.lib          SFCACTIONCONTROL     
      S_FF                 RS    ¤               L_TMR                    TON    ¤               D_TMR                    TON    ¤               P_TRIG                 R_TRIG    ¤               SD_TMR                    TON    ¤               SD_FF                 RS    ¤               DS_FF                 RS    ¤               DS_TMR                    TON    ¤               SL_FF                 RS    ¤               SL_TMR                    TON    ¤            
      N            ¤            Non stored action qualifier    R0            ¤        #    Overriding reset action qualifier    S0            ¤            Set (stored) action qualifier    L            ¤ 	           Time limited action qualifier    D            ¤ 
           Time delayed action qualifier    P            ¤            Pulse action qualifier    SD            ¤        *    Stored and time delayed action qualifier    DS            ¤        %    Delayed and stored action qualifier    SL            ¤        *    Stored and time limited action qualifier    T           ¤            Current time       Q            ¤        1    Associated action is executed, if Q equals TRUE             ╩)МS  А            R   C:\Program Files (x86)\Common Files\CAA-Targets\3S\Lib_PLCWinNT\SYSLIBCALLBACK.LIB          SYSCALLBACKREGISTER            	   iPOUIndex           ¤        !    POU Index of callback function.    Event            	   RTS_EVENT   ¤            Event to register       SysCallbackRegister                                      p0МS  А                  SYSCALLBACKUNREGISTER            	   iPOUIndex           ¤        !    POU Index of callback function.    Event            	   RTS_EVENT   ¤            Event to register       SysCallbackUnregister                                      p0МS  А                         MASINA_DE_PAINE           INIT                           _INIT                           STEP5                            _STEP5                            STEP8                            _STEP8                            STEP11                            _STEP11                            STEP14                            _STEP14                            STEP15                            _STEP15                            STEP16                            _STEP16                            STEP19                            _STEP19                            STEP18                            _STEP18                            STEP20                            _STEP20                                             ╜cY  @                
   SIMULATION           INIT                           _INIT                           STEP2                            _STEP2                                             ╩|Y  @                    
 э   √            +   <   C   	   I   L   3   ;   9       ¤   Ї   =   F   ( є$      K   %     K   %     K   %     K   2%                 ?%         +     ║╗localhost           	          РЬРT▀ 2[rw           Р▀ Ь╗═   °    @       ╔п  }D     ╕▀ ┐ъ╠ ш▀ ╠9═     Cэ╠ ░ЬР═          ╔п  }D     ╔п  }D └▀ t=═ └Ў °▀ ъ╠ 	   √щ╠     ╔п  }D ░ЬР@эЪ°▀ Ар ╠9═  B┘     р Цщ╠                  (р @эЪ{▄а     ,   ,                                                        K        @   М╟YVG      , В В ┌                      CoDeSys 1-2.2   р     ════════                     ╚          ы      
   Є         є         ў          °                    "          $                                                   '          (          ▒          │          ╡          ╣          ║         ╢          ╧          ╨          ╤         ╝          ╛          └          ┬          ─         ╞      А   ╩       P  ╚          ╠         ╬       А  ╥                    ~          А          С          Т          У          Ф          Х          Ц          Ч          Ш          Щ          Б          В          Г          Д          Е          Ж          З       @  И       @  К       @  Л       @  М       @  П       @  в         а         и          Ю       А  M         N          O          P          `         a          t          y          z          b         c          X          d         e         _          Q          \         R          K          U         X         Z         т          ф         ц      
   ш         ъ         ь         ю         ё         я          Ё          Є         є          Ї          ї          ў      (                                                                        "         !          #          $         Ы          ^          f         g          h          i          j          k         F          H         J         L          N         P         R          U         S          T          V          W          д          е          l          o          p          q          r          s         u          ▐          v         ж          з          |         ~         А         x          z      (   й          л         %         н          о          п         @         ▌          ф          ╪         &          Ё          	                   ц          ч          ш         щ          ъ         к          ▓          ┤          м          н          п          ░          ╖          ╕          ╛          ь          э                            I         J         K          	          L         M          Щ                             ▐          P         Q          S          )          	          	          Б           	          +	       @  ,	       @  -	          Z	          [	          ════            ╚   Є         є         ў          °                    "          $                                                   '          (          ▒          │          ╡          ╣          ║         ╢          ╧          ╨          ╤         ╝          ╛          └          ┬          ─         ╞      А   ╩       P  ╚          ╠         ╬       А  ╥          Ф         Х          Ц          Ч          Ш          Щ         Ж          З          И          К       А  Л       А  М       А  П       А  в         и          a          t          y          z          b         c         X          d         e         _          Q          \         R          K          U         X         Z         т          ф         ц      
   ш         ъ         ь         ю         ё         я          Ё          Є         є          Ї          ї          ў      (                                                                        "         !          #          $         Ы          ^          f          g          h          i          j          k         F          H         J         L          N         P         R          U         S          T          V          W          д         е          l          o          p          q          r          s         u          ▐          v         ж          w          x          з          |         ~         А         x          z      (   й          л         %         н          о          п         @         ▄          ▌          р      ╨  с      ╨  у         ф          ╪         &          Ё          	                   ц          ч          ш         щ          ъ         к          ▓          ┤          м          н          п          ░          ╖          ╕          ╛          ы          ь          э          ■                                                            I         J         K          	          L         M          Щ                             ▐          P         Q          S          )          	          	          Б           	          +	       @  ,	       @  -	          Z	          [	          ════            ════∙     ════════                                                   з  	   	   Name                     
   Index                            SubIndex                            Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Variable    	                 
   Value                Variable       Min                Variable       Max                Variable          5  
   	   Name                     
   Index                            SubIndex                            Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write    	   Type          ~         INT   UINT   DINT   UDINT   LINT   ULINT   SINT   USINT   BYTE   WORD   DWORD   REAL   LREAL   STRING    
   Value                Type       Default                Type       Min                Type       Max                Type          5  
   	   Name                     
   Index                            SubIndex                            Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write    	   Type          ~         INT   UINT   DINT   UDINT   LINT   ULINT   SINT   USINT   BYTE   WORD   DWORD   REAL   LREAL   STRING    
   Value                Type       Default                Type       Min                Type       Max                Type          d        Member    	                    Index-Offset                            SubIndex-Offset                            Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Min                Member       Max                Member          Я  	   	   Name                        Member    	                 
   Value                Member    
   Index                            SubIndex                            Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Min                Member       Max                Member          з  	   	   Name                     
   Index                            SubIndex                            Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Variable    	                 
   Value                Variable       Min                Variable       Max                Variable                         Є     ════════               В   _Dummy@    @   @@    @   @             дя@             дя@@   @     Аv@@   ; @+   ё     ════════                                  Аv@      4@   ░             Аv@      D@   ░                       └       @                           Аf@      4@     Аf@                Аv@     Аf@     @u@     Аf@        ў┴ы           Module.Root-1__not_found__    Steuerungskonfiguration     IB          % QB          % MB          %    М╟Y	ьл&Y     ════════           VAR_GLOBAL
END_VAR
                                                                                  "   , в D             MASINA_DE_PAINEd        MASINA_DE_PAINE();                    
SIMULATION         SIMULATION();                   ьл&Y             %      start   Called when program starts    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    ╚      stop   Called when program stops    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    ╚      before_reset   Called before reset takes place    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    ╚      after_reset   Called after reset took place    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    ╚      shutdown#   Called before shutdown is performed    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    ╚      excpt_cycletime_overflow)   Called when a cycletime overflow happened    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    ╚      excpt_watchdog%   Software watchdog OF IEC-task expired    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    ╚      excpt_fieldbus   Fieldbus error occurred    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 	   ╚      excpt_ioupdate   IO-update error    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 
   ╚      excpt_illegal_instruction   Illegal instruction    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    ╚      excpt_access_violation   Access violation    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    ╚      excpt_priv_instruction   Privileged instruction    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    ╚      excpt_dividebyzero   Division BY zero    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    ╚      excpt_fpu_error   FPU: Unspecified error    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    ╚      excpt_fpu_denormal_operand   FPU: Denormal operand    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    ╚      excpt_fpu_dividebyzero   FPU: Division BY zero    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    ╚      excpt_fpu_invalid_operation   FPU: Invalid operation    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    ╚      excpt_fpu_overflow   FPU: Overflow    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    ╚      excpt_fpu_stack_check   FPU: Stack check    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    ╚      after_reading_inputs   Called after reading of inputs    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    ╚      before_writing_outputs    Called before writing of outputs    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    ╚   
   debug_loop   Debug loop at breakpoint    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    ╚      interrupt_1   Interrupt 1    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 $   ╚      interrupt_2   Interrupt 2    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 %   ╚      interrupt_3   Interrupt 3    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 &   ╚      interrupt_4   Interrupt 4    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 '   ╚      interrupt_5   Interrupt 5    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 (   ╚      interrupt_6   Interrupt 6    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 )   ╚      interrupt_7   Interrupt 7    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 *   ╚      interrupt_8   Interrupt 8    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 +   ╚      interrupt_9   Interrupt 9    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 ,   ╚      interrupt_10   Interrupt 10    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 -   ╚      interrupt_11   Interrupt 11    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 .   ╚      interrupt_12   Interrupt 12    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 /   ╚      interrupt_13   Interrupt 13    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 0   ╚      interrupt_14   Interrupt 14    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 1   ╚      interrupt_15   Interrupt 15    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 2   ╚   $√   , ╢ ╢ T               ════════           Standard М╟Y	М╟Y      ════════                         	фvY     ════════           VAR_CONFIG
END_VAR
                                                                                   '              , Dц           Global_Variables Н╟Y	g]Y     ════════        w  VAR_GLOBAL
	(*Tipul de produs:*)
	PAINE_STANDARD :BOOL;
	PAINE_CU_SEMINTE: BOOL;
	ALUAT_DE_PIZZA: BOOL;

	(*Cantitati:*)
	CANTITATE :INT;

	(*COMPOZITIE: *)
	APA: BOOL;
	FAINA:BOOL;
	EE: BOOL;
	LAPTE: BOOL;
	SARE:BOOL;
	ULEI: BOOL;
	DROJDIE:BOOL;
	SEMINTE: BOOL;

	(*GRAMAJ:*)
	GRAMAJ: INT;
	GRAMAJ_APA: INT;
	GRAMAJ_FAINA: INT;
	GRAMAJ_EE: INT;
	GRAMAJ_LAPTE: INT;
	GRAMAJ_SARE: INT;
	GRAMAJ_ULEI: INT;
	GRAMAJ_DROJDIE: INT;
	GRAMAJ_SEMINTE: INT;

	(*TEMPERATURA COACERE:*)
	TEMPERATURA:INT:=20;
	COACERE: BOOL;
	TIMP_COACERE: TIME;
	BRUN: BOOL;
	MEDIU: BOOL;
	NORMAL: BOOL;

	AMESTECARE: BOOL;
	TIMP_AMESTECARE: TIME;
	FRAMANTARE: BOOL;
	TIMP_FRAMANTARE: TIME;
	CRESTERE :BOOL;
	TIMP_CRESTERE :TIME;
	TIMP_SIRENA: TIME;
	SIRENA:BOOL;
	(*Simulare:*)
	CANT500:BOOL;
	CANT750:BOOL;
	CANT1000:BOOL;

	START:BOOL;
	INGR:BOOL;

END_VAR
                                                                                               '           	   , -в <D           Variable_Configuration Н╟Y	Н╟Y	     ════════           VAR_CONFIG
END_VAR
                                                                                                 P   |0|0 @F   English @   Arial @        @           Ї   Р                               ■               ╠3                 
    @ А          @      DEFAULT             System      P   |0|0 @F   English @   Arial @        @           Ї   Р                      )   HH':'mm':'ss @                             dd'-'MM'-'yyyy @       '     +   ,     в            MASINA_DE_PAINE uдY	╜cY      ════════        %   PROGRAM MASINA_DE_PAINE
VAR
END_VAR       Init K     ════════           Action Init uдY╛   TEMPERATURA:=20;
GRAMAJ_APA:= 0;
GRAMAJ_FAINA := 0;
GRAMAJ_EE:= 0;
GRAMAJ_LAPTE:= 0;
GRAMAJ_SARE:= 0;
GRAMAJ_ULEI:= 0;
GRAMAJ_DROJDIE:= 0;
GRAMAJ_SEMINTE:= 0;

SIRENA:=FALSE;


      s   PAINE_STANDARD AND (CANTITATE = 500 OR CANTITATE = 750 OR CANTITATE = 1000) AND (BRUN OR MEDIU OR NORMAL) AND START         Step5 /     ════════           Action Step5 uдYс   GRAMAJ_APA:= CANTITATE/10;
GRAMAJ_FAINA := CANTITATE/10;
GRAMAJ_EE:= CANTITATE/10;
GRAMAJ_LAPTE:= CANTITATE/10;
GRAMAJ_SARE:= CANTITATE/10;
GRAMAJ_ULEI:= CANTITATE/10;
GRAMAJ_DROJDIE:= CANTITATE/10;
GRAMAJ_SEMINTE:= 0;       TRUE   u   PAINE_CU_SEMINTE AND (CANTITATE = 500 OR CANTITATE = 750 OR CANTITATE = 1000) AND (BRUN OR MEDIU OR NORMAL) AND START         Step8 2     ════════           Action Step8 uдYь   GRAMAJ_APA:= CANTITATE/10;
GRAMAJ_FAINA := CANTITATE/10;
GRAMAJ_EE:= CANTITATE/10;
GRAMAJ_LAPTE:= CANTITATE/10;
GRAMAJ_SARE:= CANTITATE/10;
GRAMAJ_ULEI:= CANTITATE/10;
GRAMAJ_DROJDIE:= CANTITATE/10;
GRAMAJ_SEMINTE:= CANTITATE/10;       TRUE   W   ALUAT_DE_PIZZA  AND (CANTITATE = 500 OR CANTITATE = 750 OR CANTITATE = 1000)  AND START         Step11 5     ════════           Action Step11 uдY╦   GRAMAJ_APA:= CANTITATE/10;
GRAMAJ_FAINA := CANTITATE/10;
GRAMAJ_EE:= 0;
GRAMAJ_LAPTE:= 0;
GRAMAJ_SARE:= CANTITATE/10;
GRAMAJ_ULEI:= CANTITATE/10;
GRAMAJ_DROJDIE:= CANTITATE/10;
GRAMAJ_SEMINTE:= 0;       TRUE         Step14 8     ════════           Action Step14 uдY   AMESTECARE := TRUE; 9     ════════           Action Step14 - Entry uдY   TIMP_AMESTECARE := TIME();      TIME() - TIMP_AMESTECARE >= t#1s         Step15 :     ════════           Action Step15 uдY(   AMESTECARE:= FALSE;
FRAMANTARE := TRUE; ;     ════════           Action Step15 - Entry uдY   TIMP_FRAMANTARE := TIME();      TIME() - TIMP_FRAMANTARE >= t#2s         Step16 1     ════════           Action Step16 uдYr   FRAMANTARE:= FALSE;
CRESTERE:= TRUE;

IF TEMPERATURA < 40 THEN
	TEMPERATURA := TEMPERATURA + 2;
END_IF;


 3     ════════           Action Step16 - Entry uдY   TIMP_CRESTERE := TIME();    5   TIME() - TIMP_CRESTERE >= t#2s AND NOT ALUAT_DE_PIZZA         Step19 B     ════════           Action Step19 uдYh   CRESTERE:= FALSE;
COACERE:= TRUE;
IF TEMPERATURA < 200 THEN
TEMPERATURA := TEMPERATURA + 10;
END_IF; C     ════════           Action Step19 - Entry uдY   TIMP_COACERE:= TIME();  	  9   BRUN AND CANTITATE = 500 AND TIME() - TIMP_COACERE>= t#5s   <   BRUN AND CANTITATE = 750 AND TIME() - TIMP_COACERE >= t#7.5s   ;   BRUN AND CANTITATE = 1000 AND TIME() - TIMP_COACERE>= t#10s   :   MEDIU AND CANTITATE = 500 AND TIME() - TIMP_COACERE>= t#4s   ;   MEDIU AND CANTITATE = 750 AND TIME() -TIMP_COACERE>= t#6.5s   ;   MEDIU AND CANTITATE = 1000 AND TIME() - TIMP_COACERE>= t#9s   ;   NORMAL AND CANTITATE = 500 AND TIME() - TIMP_COACERE>= t#3s   =   NORMAL AND CANTITATE = 750 AND TIME() - TIMP_COACERE>= t#5.5s   =   NORMAL AND CANTITATE = 1000 AND TIMP_COACERE - TIME() >= t#8s   1   TIME() - TIMP_CRESTERE>= t#2s AND  ALUAT_DE_PIZZA         Step18 =     ════════           Action Step18 uдYЖ   CRESTERE:= FALSE;
SIRENA:= TRUE;
ALUAT_DE_PIZZA:=FALSE;
CANTITATE := 0;
BRUN:=FALSE;
MEDIU:=FALSE;
NORMAL:=FALSE;
START:=FALSE; <     ════════           Action Step18 - Entry uдY   TIMP_SIRENA:= TIME();     TIME() - TIMP_SIRENA >= t#5s     Init       Step20 E     ════════           Action Step20 uдYЯ   COACERE:= FALSE;
SIRENA:=TRUE;;
PAINE_STANDARD:=FALSE;
PAINE_CU_SEMINTE:=FALSE;
CANTITATE := 0;
BRUN:=FALSE;
MEDIU:=FALSE;
NORMAL:=FALSE;
START:=FALSE; L     ════════           Action Step20 - Entry uдY   TIMP_SIRENA:=TIME();     TIME() - TIMP_SIRENA >= t#5s     InitM                  I   , -  <в         
   SIMULATION ▄лY	╩|Y      ════════            PROGRAM SIMULATION
VAR
END_VAR       Init         TRUE         Step2 J     ════════           Action Step2 ▄лY}  IF CANT500 THEN
CANTITATE:= 500;
END_IF;

IF CANT750 THEN
CANTITATE:= 750;
END_IF;

IF CANT1000 THEN
CANTITATE:= 1000;
END_IF;

IF CANTITATE = 0 THEN
CANT500:=FALSE;
CANT750:=FALSE;
CANT1000:=FALSE;
END_IF;

IF SIRENA THEN
CANT500:=FALSE;
CANT750:=FALSE;
CANT1000:=FALSE;
END_IF;

IF PAINE_STANDARD THEN
	APA:=TRUE;
	FAINA:=TRUE;
	EE:=TRUE;
	LAPTE:=TRUE;
	SARE:=TRUE;
	ULEI:=TRUE;
	DROJDIE:=TRUE;
	SEMINTE:=FALSE;
END_IF;



IF PAINE_CU_SEMINTE THEN
	APA:=TRUE;
	FAINA:=TRUE;
	EE:=TRUE;
	LAPTE:=TRUE;
	SARE:=TRUE;
	ULEI:=TRUE;
	DROJDIE:=TRUE;
	SEMINTE:=TRUE;
END_IF;

IF ALUAT_DE_PIZZA THEN
	APA:=TRUE;
	FAINA:=TRUE;
	EE:=FALSE;
	LAPTE:=FALSE;
	SARE:=TRUE;
	ULEI:=TRUE;
	DROJDIE:=TRUE;
	SEMINTE:=FALSE;
END_IF;


IF PAINE_CU_SEMINTE = FALSE AND PAINE_STANDARD = FALSE AND ALUAT_DE_PIZZA = FALSE THEN
	APA:=FALSE;
	FAINA:= FALSE;
	EE:=FALSE;
	LAPTE:=FALSE;
	SARE:=FALSE;
	ULEI:=FALSE;
	DROJDIE:=FALSE;
	SEMINTE:=FALSE;
END_IF;


IF NOT(AMESTECARE) AND NOT(FRAMANTARE) AND NOT(CRESTERE) AND NOT(COACERE)  AND NOT(SIRENA)THEN
	INGR:=TRUE;
ELSE
	INGR:=FALSE;
END_IF





       TRUE     Initd                   F   ,   в D           MASINA_DE_PAINE фvY
    @    ┘C└^┬  P   ^                                                                                                       
    @        Z рЗ█Ё ]                                                          @                      М   Ї Р        @	                       @                                                                                                          
    @        М ■K│ы X  └└└                                                     @                      Н   Ї Р        @	                       @                                                                                                          
    @        ┤ :╔ O╛ D                                             NOT( DROJDIE AND INGR)            @                      С   Ї Р        @	                       @                                                                                                          
    @        ╥ ч 1▄ &                                             NOT(APA AND INGR)            @                      У   Ї Р        @	                       @                                                                                                          
    @        · &;0                                             NOT( FAINA AND INGR)            @                      Ф   Ї Р        @	                       @                                                                                                          
    @        ╛ v╙ Л╚ А                                             NOT (ULEI AND INGR)            @                      Х   Ї Р        @	                       @                                                                                                          
    @        ▄ Xё mц b                                             NOT( SEMINTE AND INGR)            @                      Ц   Ї Р        @	                       @                                                                                                          
    @        DYN                                             NOT(EE AND INGR)            @                      Ч   Ї Р        @	                       @                                                                                                          
    @        ▄ Аё Хц К                                             NOT (SARE AND INGR)            @                      Ш   Ї Р        @	                       @                                                                                                          
    @        l#Бv                                             NOT( LAPTE AND INGR)            @                      Щ   Ї Р        @	                       @                                                                                                          
    @        ╠Ъщ ┌╠   ААА                                                    ALUATUL @                          ы Р       Arial Rounded MT Bold @                       @                                                                                                         
    @        ъ╕w╫0╟    @                 $   PAINE STANDARD @╚╚╚     ▄▄▄             @        Ї Р        @	    PAINE_STANDARD            P   INTERN ASSIGN PAINE_CU_SEMINTE:=(FALSE);INTERN ASSIGN ALUAT_DE_PIZZA:=(FALSE) @       Э                                                                                                     
    @        Ф╕!╫┌╟    @                 &   PAINE CU SEMINTE @╚╚╚     ▄▄▄             @        Ї Р        @	    PAINE_CU_SEMINTE            N   INTERN ASSIGN PAINE_STANDARD:=(FALSE);INTERN ASSIGN ALUAT_DE_PIZZA:=(FALSE) @       Э                                                                                                     
    @        >╕╦╫Д╟    @                 $   ALUAT DE PIZZA @╚╚╚     ▄▄▄             @    	    Ї Р        @	    ALUAT_DE_PIZZA            P   INTERN ASSIGN PAINE_CU_SEMINTE:=(FALSE);INTERN ASSIGN PAINE_STANDARD:=(FALSE) @       Э                                                                                                      
    @        &р;ї0ъ                                                 PAINE_STANDARD        @                      
    Ї Р        @	                       @                                                                                                          
    @        ╨рхї┌ъ                                                 PAINE_CU_SEMINTE        @                          Ї Р        @	                       @                                                                                                          
    @        zрПїДъ                                                 ALUAT_DE_PIZZA        @                          Ї Р        @	                       @                                                                                                          
    @        ╠щm┌:   ААА                                                     CANTITATEA ALUATULUI @                          ы Р       Arial Rounded MT Bold @                       @                                                                                                         
    @        ъ&wE05    @                    500 g @╚╚╚     ▄▄▄             @        Ї Р        @	    CANT500            A   INTERN ASSIGN CANT750:=(FALSE);INTERN ASSIGN CANT1000:=(FALSE) @       Э                                                                                                     
    @        Ф&!E┌5    @                    750 g @╚╚╚     ▄▄▄             @        Ї Р        @	    CANT750            A   INTERN ASSIGN CANT500:=(FALSE);INTERN ASSIGN CANT1000:=(FALSE) @       Э                                                                                                     
    @        >&╦EД5    @                    1000 g @╚╚╚     ▄▄▄             @        Ї Р        @	    CANT1000            @   INTERN ASSIGN CANT500:=(FALSE);INTERN ASSIGN CANT750:=(FALSE) @       Э                                                                                                      
    @        &N;c0X                                                 CANT500        @                          Ї Р        @	                       @                                                                                                          
    @        ╨Nхc┌X                                                 CANT750        @                          Ї Р        @	                       @                                                                                                          
    @        zNПcДX                                                 CANT1000        @                          Ї Р        @	                       @                                                                                                           
    @        (  ╣═Ё Ё    ААА                                                    SELECTAREA INGREDIENTELOR @                          ы Р       Arial Rounded MT Bold @                       @                                                                                                          
    @        < F Q [ F P                                                  APA        @                          Ї Р        @	                       @                                                                                                          
    @        < x Q Н F В                                                  FAINA        @                          Ї Р        @	                       @                                                                                                          
    @        < к Q ┐ F ┤                                                  EE        @                          Ї Р        @	                       @                                                                                                          
    @        < ▄ Q ё F ц                                                  LAPTE        @                          Ї Р        @	                       @                                                                                                          
    @        < Q #F                                                  SARE        @                          Ї Р        @	                       @                                                                                                          
    @        < @Q UF J                                                 ULEI        @                          Ї Р        @	                       @                                                                                                          
    @        < rQ ЗF |                                                 DROJDIE        @                          Ї Р        @	                       @                                                                                                          
    @        < дQ ╣F о                                                 SEMINTE        @                          Ї Р        @	                       @                                                                                                           
    @        P F o [ _ P                                                            A @                          ы ╝    	   Arial @                       @                                                                                                           
    @        P x o Н _ В                                                            F @                          ы ╝    	   Arial @                       @                                                                                                           
    @        P к o ┐ _ ┤                                                            E @                          ы ╝    	   Arial @                       @                                                                                                           
    @        P ▄ o ё Z ц                                                            L @                           ы ╝    	   Arial @                       @                                                                                                           
    @        P o #_                                                            S @                      !    ы ╝    	   Arial @                       @                                                                                                           
    @        P @o Ud J                                                           U @                      "    ы ╝    	   Arial @                       @                                                                                                           
    @        P ro З_ |                                                           D @                      #    ы ╝    	   Arial @                       @                                                                                                           
    @        P Ъy ├d о                                                           sem @                      $    э ╝    	   Arial @                       @                                                                                                         
    @        ■и й■и                                                                  D    Ї Р        @	                                               @ 
    @            d                                                                                                          
    @                                                                       М   {ExtendedElement},Visu\ElementDLL.ete,1,@Bargraph,200,60,0,0,0,,,%.1f,1,2,-4,4,0,0,0,0,0,0,0,-13,16,700,Arial,0,255,0,255,0,0,0,0,0,0,0, @                      E    є ╝    	   Arial @
                       @                                                                                                           
    @         
 e  :                                                   () < 0        @                      F    Ї Р        @	                       @                                                                                                          
    @            #  #                                          @                         G    Ї Р        @	                                                                                                                              
    @                                                        @                         H    Ї Р        @	                                                                                                                               
    @            8  +                                                            -4.0 @                      I    є ╝    	   Arial @
                       @                                                                                                          
    @            N  N                                          @                         J    Ї Р        @	                                                                                                                              
    @            9  9                                          @                         K    Ї Р        @	                                                                                                                               
    @        *  G 8 9 +                                                            -2.0 @                      L    є ╝    	   Arial @
                       @                                                                                                          
    @            z  z                                          @                         M    Ї Р        @	                                                                                                                              
    @            e  e                                          @                         N    Ї Р        @	                                                                                                                               
    @        Y  q 8 e +                                                            0.0 @                      O    є ╝    	   Arial @
                       @                                                                                                          
    @            е  е                                          @                         P    Ї Р        @	                                                                                                                              
    @            Р  Р                                          @                         Q    Ї Р        @	                                                                                                                               
    @        Д  Ь 8 Р +                                                            2.0 @                      R    є ╝    	   Arial @
                       @                                                                                                          
    @            ╗  ╗                                          @                         S    Ї Р        @	                                                                                                                               
    @        п  ╟ 8 ╗ +                                                            4.0 @                      T    є ╝    	   Arial @
                       @                                     └└└     А   АА   А   АА   А А А ААА                                                                                                         
    @        М < }o U                                                                   U    Ї Р        @	                                               @ 
    @            d                                                                                                          
    @                                                                        г   {ExtendedElement},Visu\ElementDLL.ete,1,@Bargraph,241,51,1,0,0,GRAMAJ_APA,,%.f,25,25,0,100,0,0,0,0,0,0,0,-13,16,700,Arial,0,255,0,255,0,0,0,0,0,0,0,0,0,,0,0,0, @                           є ╝    	   Arial @
                       @                                                                                                           
    @          y  E                                !   ((GRAMAJ_APA * 1.0) - 50)  * 2.08               (GRAMAJ_APA) < 0        @                           Ї Р        @	                       @                                                                                                          
    @                                                         @                              Ї Р        @	                                                                                                                               
    @           /  "                                                            0 @                           є ╝    	   Arial @
                       @                                                                                                          
    @             D  D                                          @                              Ї Р        @	                                                                                                                               
    @        :  M / D "                                                            25 @                           є ╝    	   Arial @
                       @                                                                                                          
    @             x  x                                          @                              Ї Р        @	                                                                                                                               
    @        n  Б / x "                                                            50 @                           є ╝    	   Arial @
                       @                                                                                                          
    @             м  м                                          @                              Ї Р        @	                                                                                                                               
    @        в  ╡ / м "                                                            75 @                           є ╝    	   Arial @
                       @                                                                                                          
    @             р  р                                          @                              Ї Р        @	                                                                                                                               
    @        ╥  ю / р "                                                            100 @                           є ╝    	   Arial @
                       @                                     └└└     А   АА   А   АА   А А А ААА                                                                                                         
    @        М Ъ}═│                                                                  X   Ї Р        @	                                               @ 
    @            d                                                                                                          
    @                                                                        з   {ExtendedElement},Visu\ElementDLL.ete,1,@Bargraph,241,51,1,0,0,GRAMAJ_SEMINTE,,%.f,25,25,0,100,0,0,0,0,0,0,0,-13,16,700,Arial,0,255,0,255,0,0,0,0,0,0,0,0,0,,0,0,0, @                           є ╝    	   Arial @
                       @                                                                                                           
    @          y  E                                %   ((GRAMAJ_SEMINTE * 1.0) - 50)  * 2.08               (GRAMAJ_SEMINTE) < 0        @                           Ї Р        @	                       @                                                                                                          
    @                                                         @                              Ї Р        @	                                                                                                                               
    @           /  "                                                            0 @                           є ╝    	   Arial @
                       @                                                                                                          
    @             D  D                                          @                              Ї Р        @	                                                                                                                               
    @        :  M / D "                                                            25 @                           є ╝    	   Arial @
                       @                                                                                                          
    @             x  x                                          @                              Ї Р        @	                                                                                                                               
    @        n  Б / x "                                                            50 @                           є ╝    	   Arial @
                       @                                                                                                          
    @             м  м                                          @                              Ї Р        @	                                                                                                                               
    @        в  ╡ / м "                                                            75 @                           є ╝    	   Arial @
                       @                                                                                                          
    @             р  р                                          @                              Ї Р        @	                                                                                                                               
    @        ╥  ю / р "                                                            100 @                           є ╝    	   Arial @
                       @                                     └└└     А   АА   А   АА   А А А ААА                                                                                                         
    @        М h}ЫБ                                                                  K   Ї Р        @	                                               @ 
    @            d                                                                                                          
    @                                                                        з   {ExtendedElement},Visu\ElementDLL.ete,1,@Bargraph,241,51,1,0,0,GRAMAJ_DROJDIE,,%.f,25,25,0,100,0,0,0,0,0,0,0,-13,16,700,Arial,0,255,0,255,0,0,0,0,0,0,0,0,0,,0,0,0, @                           є ╝    	   Arial @
                       @                                                                                                           
    @          y  E                                %   ((GRAMAJ_DROJDIE * 1.0) - 50)  * 2.08               (GRAMAJ_DROJDIE) < 0        @                           Ї Р        @	                       @                                                                                                          
    @                                                         @                              Ї Р        @	                                                                                                                               
    @           /  "                                                            0 @                           є ╝    	   Arial @
                       @                                                                                                          
    @             D  D                                          @                              Ї Р        @	                                                                                                                               
    @        :  M / D "                                                            25 @                           є ╝    	   Arial @
                       @                                                                                                          
    @             x  x                                          @                              Ї Р        @	                                                                                                                               
    @        n  Б / x "                                                            50 @                           є ╝    	   Arial @
                       @                                                                                                          
    @             м  м                                          @                              Ї Р        @	                                                                                                                               
    @        в  ╡ / м "                                                            75 @                           є ╝    	   Arial @
                       @                                                                                                          
    @             р  р                                          @                              Ї Р        @	                                                                                                                               
    @        ╥  ю / р "                                                            100 @                           є ╝    	   Arial @
                       @                                     └└└     А   АА   А   АА   А А А ААА                                                                                                         
    @        М 6}iO                                                                  >   Ї Р        @	                                               @ 
    @            d                                                                                                          
    @                                                                        г   {ExtendedElement},Visu\ElementDLL.ete,1,@Bargraph,241,51,1,0,0,GRAMAJ_APA,,%.f,25,25,0,100,0,0,0,0,0,0,0,-13,16,700,Arial,0,255,0,255,0,0,0,0,0,0,0,0,0,,0,0,0, @                           є ╝    	   Arial @
                       @                                                                                                           
    @          y  E                                !   ((GRAMAJ_APA * 1.0) - 50)  * 2.08               (GRAMAJ_APA) < 0        @                           Ї Р        @	                       @                                                                                                          
    @                                                         @                              Ї Р        @	                                                                                                                               
    @           /  "                                                            0 @                           є ╝    	   Arial @
                       @                                                                                                          
    @             D  D                                          @                              Ї Р        @	                                                                                                                               
    @        :  M / D "                                                            25 @                           є ╝    	   Arial @
                       @                                                                                                          
    @             x  x                                          @                              Ї Р        @	                                                                                                                               
    @        n  Б / x "                                                            50 @                           є ╝    	   Arial @
                       @                                                                                                          
    @             м  м                                          @                              Ї Р        @	                                                                                                                               
    @        в  ╡ / м "                                                            75 @                           є ╝    	   Arial @
                       @                                                                                                          
    @             р  р                                          @                              Ї Р        @	                                                                                                                               
    @        ╥  ю / р "                                                            100 @                           є ╝    	   Arial @
                       @                                     └└└     А   АА   А   АА   А А А ААА                                                                                                         
    @        М }7                                                                  1   Ї Р        @	                                               @ 
    @            d                                                                                                          
    @                                                                        д   {ExtendedElement},Visu\ElementDLL.ete,1,@Bargraph,241,51,1,0,0,GRAMAJ_SARE,,%.f,25,25,0,100,0,0,0,0,0,0,0,-13,16,700,Arial,0,255,0,255,0,0,0,0,0,0,0,0,0,,0,0,0, @                           є ╝    	   Arial @
                       @                                                                                                           
    @          y  E                                "   ((GRAMAJ_SARE * 1.0) - 50)  * 2.08               (GRAMAJ_SARE) < 0        @                           Ї Р        @	                       @                                                                                                          
    @                                                         @                              Ї Р        @	                                                                                                                               
    @           /  "                                                            0 @                           є ╝    	   Arial @
                       @                                                                                                          
    @             D  D                                          @                              Ї Р        @	                                                                                                                               
    @        :  M / D "                                                            25 @                           є ╝    	   Arial @
                       @                                                                                                          
    @             x  x                                          @                              Ї Р        @	                                                                                                                               
    @        n  Б / x "                                                            50 @                           є ╝    	   Arial @
                       @                                                                                                          
    @             м  м                                          @                              Ї Р        @	                                                                                                                               
    @        в  ╡ / м "                                                            75 @                           є ╝    	   Arial @
                       @                                                                                                          
    @             р  р                                          @                              Ї Р        @	                                                                                                                               
    @        ╥  ю / р "                                                            100 @                           є ╝    	   Arial @
                       @                                     └└└     А   АА   А   АА   А А А ААА                                                                                                         
    @        М ╥ }ы                                                                   $   Ї Р        @	                                               @ 
    @            d                                                                                                          
    @                                                                        е   {ExtendedElement},Visu\ElementDLL.ete,1,@Bargraph,241,51,1,0,0,GRAMAJ_LAPTE,,%.f,25,25,0,100,0,0,0,0,0,0,0,-13,16,700,Arial,0,255,0,255,0,0,0,0,0,0,0,0,0,,0,0,0, @                           є ╝    	   Arial @
                       @                                                                                                           
    @          y  E                                #   ((GRAMAJ_LAPTE * 1.0) - 50)  * 2.08               (GRAMAJ_LAPTE) < 0        @                           Ї Р        @	                       @                                                                                                          
    @                                                         @                              Ї Р        @	                                                                                                                               
    @           /  "                                                            0 @                           є ╝    	   Arial @
                       @                                                                                                          
    @             D  D                                          @                              Ї Р        @	                                                                                                                               
    @        :  M / D "                                                            25 @                           є ╝    	   Arial @
                       @                                                                                                          
    @             x  x                                          @                              Ї Р        @	                                                                                                                               
    @        n  Б / x "                                                            50 @                           є ╝    	   Arial @
                       @                                                                                                          
    @             м  м                                          @                              Ї Р        @	                                                                                                                               
    @        в  ╡ / м "                                                            75 @                           є ╝    	   Arial @
                       @                                                                                                          
    @             р  р                                          @                              Ї Р        @	                                                                                                                               
    @        ╥  ю / р "                                                            100 @                           є ╝    	   Arial @
                       @                                     └└└     А   АА   А   АА   А А А ААА                                                                                                         
    @        М а }╙ ╣                                                                      Ї Р        @	                                               @ 
    @            d                                                                                                          
    @                                                                        в   {ExtendedElement},Visu\ElementDLL.ete,1,@Bargraph,241,51,1,0,0,GRAMAJ_EE,,%.f,25,25,0,100,0,0,0,0,0,0,0,-13,16,700,Arial,0,255,0,255,0,0,0,0,0,0,0,0,0,,0,0,0, @                           є ╝    	   Arial @
                       @                                                                                                           
    @          y  E                                    ((GRAMAJ_EE * 1.0) - 50)  * 2.08               (GRAMAJ_EE) < 0        @                           Ї Р        @	                       @                                                                                                          
    @                                                         @                              Ї Р        @	                                                                                                                               
    @           /  "                                                            0 @                           є ╝    	   Arial @
                       @                                                                                                          
    @             D  D                                          @                              Ї Р        @	                                                                                                                               
    @        :  M / D "                                                            25 @                           є ╝    	   Arial @
                       @                                                                                                          
    @             x  x                                          @                              Ї Р        @	                                                                                                                               
    @        n  Б / x "                                                            50 @                           є ╝    	   Arial @
                       @                                                                                                          
    @             м  м                                          @                              Ї Р        @	                                                                                                                               
    @        в  ╡ / м "                                                            75 @                           є ╝    	   Arial @
                       @                                                                                                          
    @             р  р                                          @                              Ї Р        @	                                                                                                                               
    @        ╥  ю / р "                                                            100 @                           є ╝    	   Arial @
                       @                                     └└└     А   АА   А   АА   А А А ААА                                                                                                         
    @        М d }Ч }                                                                   
   Ї Р        @	                                               @ 
    @            d                                                                                                          
    @                                                                        е   {ExtendedElement},Visu\ElementDLL.ete,1,@Bargraph,241,51,1,0,0,GRAMAJ_FAINA,,%.f,25,25,0,100,0,0,0,0,0,0,0,-13,16,700,Arial,0,255,0,255,0,0,0,0,0,0,0,0,0,,0,0,0, @                           є ╝    	   Arial @
                       @                                                                                                           
    @          y  E                                #   ((GRAMAJ_FAINA * 1.0) - 50)  * 2.08               (GRAMAJ_FAINA) < 0        @                           Ї Р        @	                       @                                                                                                          
    @                                                         @                              Ї Р        @	                                                                                                                               
    @           /  "                                                            0 @                           є ╝    	   Arial @
                       @                                                                                                          
    @             D  D                                          @                              Ї Р        @	                                                                                                                               
    @        :  M / D "                                                            25 @                           є ╝    	   Arial @
                       @                                                                                                          
    @             x  x                                          @                              Ї Р        @	                                                                                                                               
    @        n  Б / x "                                                            50 @                           є ╝    	   Arial @
                       @                                                                                                          
    @             м  м                                          @                              Ї Р        @	                                                                                                                               
    @        в  ╡ / м "                                                            75 @                           є ╝    	   Arial @
                       @                                                                                                          
    @             р  р                                          @                              Ї Р        @	                                                                                                                               
    @        ╥  ю / р "                                                            100 @                           є ╝    	   Arial @
                       @                                     └└└     А   АА   А   АА   А А А ААА                                                                                                          
    @        ╠фщ┌¤   ААА                                                     @                      n   ы Р       Arial Rounded MT Bold @                       @                                                                                                         
    @        Фю!┌¤    @                    START @╚╚╚     ▄▄▄             @    p   Ї Р        @	    .START                 @       Э                                                                                                      
    @        ╠vщ█┌и   ААА                                                    TIPUL ALUATULUI @                      q   ы Р       Arial Rounded MT Bold @                       @                                                                                                         
    @        ъФw│0г    @                    BRUN @╚╚╚     ▄▄▄             @    y   Ї Р        @	    .BRUN            =   INTERN ASSIGN MEDIU:=(FALSE);INTERN ASSIGN NORMAL:=(FALSE) @       Э                                                                                                     
    @        ФФ!│┌г    @                    MEDIU @╚╚╚     ▄▄▄             @    z   Ї Р        @	    .MEDIU            <   INTERN ASSIGN BRUN:=(FALSE);INTERN ASSIGN NORMAL:=(FALSE) @       Э                                                                                                     
    @        >Ф╦│ДЮ    @                    NORMAL @╚╚╚     ▄▄▄             @    {   Ї Р        @	    NORMAL            ;   INTERN ASSIGN BRUN:=(FALSE);INTERN ASSIGN MEDIU:=(FALSE) @       Э                                                                                                      
    @        &╝;╤0╞                                                 BRUN        @                      |   Ї Р        @	                       @                                                                                                          
    @        ╨╝х╤┌╞                                                 MEDIU        @                      }   Ї Р        @	                       @                                                                                                          
    @        z╝П╤Д╞                                                 NORMAL        @                      ~   Ї Р        @	                       @                                                                                                          
    @        ╠ ▀A╒к    ААА                                                 
   Proces @                      В   ы Р       Arial Rounded MT Bold @                       @                                                                                                          
    @        :╚ O▌ D╥                                               
   AMESTECARE        @                      Г   Ї Р        @	                       @                                                                                                           
    @        рк й╔ D╣                                                            AMESTECARE @                      Д   ы Р    	   Arial @                       @                                                                                                          
    @        *╚ ?▌ 4╥                                               
   FRAMANTARE        @                      Е   Ї Р        @	                       @                                                                                                           
    @        ╨к Щ╔ 4╣                                                            FRAMANTARE @                      Ж   ы Р    	   Arial @                       @                                                                                                          
    @        :O#D                                                 CRESTERE        @                      З   Ї Р        @	                       @                                                                                                           
    @        рЁ йD                                                             CRESTERE @                      И   ы Р    	   Arial @                       @                                                                                                          
    @        *?#4                                                 COACERE        @                      Й   Ї Р        @	                       @                                                                                                           
    @        ╨Ё Щ>,                                                           COACERE @                      К   ы Р    	   Arial @                       @                                                                                                          
    @        р< ╦Н ╒d                                                         Temp @                         Ё Р    	   Arial @                       @                                                                                                           
    @        ╞Z яy ┌i                                                        .TEMPERATURA   %s @                      Б   ы ╝    	   Arial @                       @                                                                                                           
    @        Ф"K╦6                                                 SIRENA       SIRENA  @                      Л   Ї Р        @	                       @                                                                                                          
    @        ╥ :mы S                                             NOT(AMESTECARE)            @                      Я   Ї Р        @	                       @                                                                                                          
    @        ╚ Dcы S                                          &   NOT(FRAMANTARE AND NOT ALUAT_DE_PIZZA)            @                      а   Ї Р        @	                       @                                                                                                          
    @        ┤ D-mЁ X                                          >   NOT(NOT ALUAT_DE_PIZZA AND TEMPERATURA>20 AND TEMPERATURA <30)            @                      б   Ї Р        @	                       @                                                                                                          
    @        Ц :Awы X                                          O   NOT(NOT ALUAT_DE_PIZZA AND TEMPERATURA>=30 AND TEMPERATURA <=70 AND NOT SIRENA)            @                      в   Ї Р        @	                       @                                                                                                          
    @        Ц :Awы X  ёїе                                     @   NOT(NOT ALUAT_DE_PIZZA AND TEMPERATURA>70 AND TEMPERATURA <=100)            @                      г   Ї Р        @	                       @                                                                                                          
    @        Ц :Awы X                                          A   NOT(NOT ALUAT_DE_PIZZA AND TEMPERATURA>100 AND TEMPERATURA <=150)            @                      д   Ї Р        @	                       @                                                                                                          
    @        Ц :Awы X  эм4                                     @   NOT(NOT ALUAT_DE_PIZZA AND TEMPERATURA>150 AND TEMPERATURA <200)            @                      е   Ї Р        @	                       @                                                                                                          
    @        Ц :Awы X   А@                                     ,   NOT(NOT ALUAT_DE_PIZZA AND TEMPERATURA>=200)            @                      ж   Ї Р        @	                       @                                                                                                          
    @           Z· DN· l· l                                        @                    NOT(COACERE)    ╖   Ї Р        @	                                                                                                                              
    @         ы Zц D· Nц lц l                                        @                    NOT COACERE    ╕   Ї Р        @	                                                                                                                              
    @         ╫ Z╥ Dц N╥ l╥ l                                        @                    NOT(COACERE)    ╣   Ї Р        @	                                                                                                                              
    @         ZD"Nll                                        @                    NOT(COACERE)    ╗   Ї Р        @	                                                                                                                              
    @         ├ Z╛ D╥ N╛ l╛ l                                        @                    NOT(COACERE)    ╝   Ї Р        @	                                                                                                                              
    @         ZD"Nll                                        @                 !   NOT(TEMPERATURA = 200 AND SIRENA)    ╜   Ї Р        @	                                                                                                                              
    @           Z· DN· l· l                                        @                 !   NOT(TEMPERATURA = 200 AND SIRENA)    ╛   Ї Р        @	                                                                                                                              
    @         ы Zц D· Nц lц l                                        @                 !   NOT(TEMPERATURA = 200 AND SIRENA)    ┐   Ї Р        @	                                                                                                                              
    @         ╫ Z╥ Dц N╥ l╥ l                                        @                 !   NOT(TEMPERATURA = 200 AND SIRENA)    └   Ї Р        @	                                                                                                                              
    @         ├ Z╛ D╥ N╛ l╛ l                                        @                 !   NOT(TEMPERATURA = 200 AND SIRENA)    ┴   Ї Р        @	                                                                                                                              
    @        ╚ 0wы S                                          "   NOT(ALUAT_DE_PIZZA AND FRAMANTARE)            @                      п   Ї Р        @	                       @                                                                                                          
    @        ┤ #Лы S                                          K   NOT(ALUAT_DE_PIZZA AND TEMPERATURA >= 20 AND TEMPERATURA <=30 AND CRESTERE)            @                      о   Ї Р        @	                       @                                                                                                          
    @        к -Хы X                                          '   NOT(ALUAT_DE_PIZZA AND TEMPERATURA >30)            @                      ░   Ї Р        @	                       @                                                                                                          
    @        Ц Aйы X                                             NOT(TEMPERATURA=40 AND SIRENA)            @                      ▓   Ї Р        @	                       @                                                                                                          
    @        Ц Aйц X                                          (   NOT(ALUAT_DE_PIZZA AND TEMPERATURA >=40)            @                      ▒   Ї Р        @	                       @                                     └└└     А   АА   А   АА   А А А ААА                  ¤   , 4 4 М╥         "   Standard.lib 2.6.14 10:37:46 @┌7МS    IecSfc.lib 2.6.14 11:37:46 @┌7МS(   SYSLIBCALLBACK.LIB 2.6.14 11:06:08 @А>МS      CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        	   RTC @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @               F   SFCActionControl @      SFCActionType       SFCStepType                      Globale_Variablen @           b   SysCallbackRegister @   	   RTS_EVENT       RTS_EVENT_FILTER       RTS_EVENT_SOURCE                   SysCallbackUnregister @                            , Ь Ь Ї:           2 є  є                             
             ·   , h h └        °   , N N жь                      POUs                MASINA_DE_PAINE  +                
   SIMULATION  I                  
   Data types                    Visualizations                MASINA_DE_PAINE  F                     Global Variables                Global_Variables                     Variable_Configuration  	                                                ════════             Н╟Y╚              ╚                 	   localhost            P      	   localhost            P      	   localhost            P     Щ╟Y Эh