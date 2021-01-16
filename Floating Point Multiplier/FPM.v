`include "Tools/wallace.v"
`include "Tools/split.v"

//LINK FOR CONVERSION -- https://www.h-schmidt.net/FloatConverter/IEEE754.html

module top;
    reg [31:0] Exp1,Exp2;   //imputs
    wire S1,S2,S3;          //Signs
    wire [7:0] E1,E2;       //Exponents
    wire [22:0] M1,M2;      //Mantissa

    reg [22:0]M3;       //Final Mantissa
    reg [7:0]E3;        //Final Exponent

    //SPLIT phase
    Split SP1(Exp1,S1,E1,M1);
    Split SP2(Exp2,S2,E2,M2);

    //MULTIPLICATION
    wire [31:0] N1,N2;   //TEMPORARY VAR
	wire [63:0] N3;
    wire [8:0] temp_E3;

    assign N1 = {{8'b0},|E1,M1};   //Reduction xor for handle zeroes
    assign N2 = {{8'b0},|E2,M2};   //and denormal numbers
   

    assign temp_E3=E1+E2-127;
    assign S3=S1^S2;
    
    wallace w(N2,N1,N3);

    //NORMALISING
	always@(*)	
	begin
		if(N3[47]==1)
		begin
            M3=N3[46:24];
            E3=temp_E3+1;
        end
        else
        begin
            M3=N3[45:23]; //rounding off phase
            E3=temp_E3;
        end
        if(temp_E3>=255) 
            E3=8'b11111111;
	end

    reg [31:0] Final_exp;

    //Checking various cases
    always@(*)
    begin
        if(&E1 == 1'b1 && |M1 == 1'b0)          //INFINITY
            Final_exp={1'b0,8'b11111111,23'b0};
        else if(&E2 == 1'b1 && |M2 == 1'b0)     //INFINITY
            Final_exp={1'b0,8'b11111111,23'b0};

        else if(|E1 == 1'b0 && |M1 == 1'b0)     //ZERO
            Final_exp={32'b0};
        else if(|E2 == 1'b0 && |M2 == 1'b0)     //ZERO
            Final_exp={32'b0};
       
        else                                    //NORMAL CASE
            Final_exp={S3,E3,M3};
    end

	//TESTBENCHING
    initial
    begin
        #0  Exp1={9'b010000000,{23{1'b0}}}; Exp2={9'b010000001,{23{1'b0}}};                          //2*4
        #10 Exp1=32'b01000010111110100100000000000000; Exp2=32'b01000001010000010000000000000000;   //125.125*12.0625
        #10 Exp1=32'b01000000110010000000000000000000; Exp2=32'b01000000101111100110011001100110;   // 6.25*5.95
        #10 Exp1=32'b01111111100000000000000000000000; Exp2=32'b01110011100000000000000000000000;   //INFINTIY

    end
    initial
    begin
        $monitor($time, " Exp1: %b   Exp2: %b   PRODUCT: %b\n",Exp1,Exp2,Final_exp);
    end

endmodule