`include "tools/shifter.v"
`include "tools/split.v"
`include "tools/swap.v"
`include "tools/rda.v"

//link to IEEE 754 converter : https://www.h-schmidt.net/FloatConverter/IEEE754.html

module top;

    reg [31:0] I1,I2;
    wire [31:0]A,B;
    Swap SW(I1,I2,A,B); //First step check whether I1 > I2 and swap accordingly to store bigger number in A and smaller in B

    wire S1,S2;
    wire [7:0] E1,E2; //exponents
    wire [22:0] M1,M2; //mantissas

    Split SP1(A,S1,E1,M1);
    Split SP2(B,S2,E2,M2);

    wire  [7:0]Expdiff; //storing the difference of exponents
    assign Expdiff = E1 - E2;

    wire [31:0] T1,T2,T3;   //temp variables to
    assign T1 = {|E1,M1};   //handling zeroes and
    assign T2 = {|E2,M2};   //denormal numbers

    shifter BS(T2,Expdiff,T3);
    wire [31:0]T4;
    assign T4 = {32{S1^S2}}^T3; //this is to calculate 1's compliment in case of different signs of inputs. 

    wire [31:0]Sum;
    wire Carry;
    RDA C1(T1,T4,S1^S2,Sum,Carry);

    reg [22:0] M3,tmp; //variables for final result and temporary mantissa
    reg [7:0] E3;

    integer i =0;
    //normalising the final result
    always @(Sum)
    begin
        //overflowing of mantissa
        if(Sum[24]==1)
        begin
            M3 = Sum[23:1];
            E3 = E1 + 1'b1;
        end
        else if(Sum[23]==0)
        begin
            //underflow of mantissa
            i = 1;
            while(Sum[23-i] == 1'b0)
            begin
                i = i+1;
            end 
            E3 = E1 - i;
            tmp = Sum[22:0];
            M3 = tmp<<i;
        end
        else
        //normal case
        begin
            M3 = Sum[22:0];
            E3 = E1;
        end
    end

    reg [31:0]Final_exp;
    always @ (E3 or M3)
    begin
        if(&E1 == 1'b1 && |M1 == 1'b0)  //INFINITY case
            Final_exp = {S1,{8{1'b1}},23'b0};
   
        else //normal & NAN cases
            Final_exp = {S1,{8{|Sum}} & E3,M3};
    end

    //Testbench Code
    initial
    begin
      // 6 + 8 = 14
        #0  I1={1'b0,{8'b10000001},23'b10000000000000000000000}; I2={1'b0,{8'b10000010},23'b00000000000000000000000};

        // 9.75 + 0.5625 = 10.3125
        #10 I1={1'b0,{8'b10000010},23'b00111000000000000000000}; I2={1'b0,{8'b01111110},23'b00100000000000000000000};

        // -6 + -8 = -14
        #10 I1={1'b1,{8'b10000001},23'b10000000000000000000000}; I2={1'b1,{8'b10000010},23'b00000000000000000000000};

        // -6 + 8 = 2
        #10 I1={1'b1,{8'b10000001},23'b10000000000000000000000}; I2={1'b0,{8'b10000010},23'b00000000000000000000000};

        //inf+(-6)=inf
        #10 I1={1'b0,{8'b11111111},23'b00000000000000000000000}; I2={1'b1,{8'b10000001},23'b10000000000000000000000};

        // zero + something
        #10 I1={32'b0}; I2={1'b0,{7{1'b1}},24'b111011}; 

        //infinity + zero
        #10 I1={32'b0}; I2={1'b0,{8{1'b1}},23'b0};
    end
    initial
    begin
        $monitor($time," A=%b B=%b\tC=%b\n",I1,I2,Final_exp);
        $dumpfile("fpa.vcd");
		$dumpvars;
    end

endmodule
