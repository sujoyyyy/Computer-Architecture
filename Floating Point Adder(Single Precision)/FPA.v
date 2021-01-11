`include "tools/swap.v"
`include "tools/rda.v"
`include "tools/barrel_shifter.v"
`include "tools/split.v"
//link to IEEE 754 converter : https://www.h-schmidt.net/FloatConverter/IEEE754.html

module top;

    reg [31:0] I1,I2;
    wire [31:0]A,B;
    Swap SW(I1,I2,A,B); //First step check whether A > B and swap accordingly

    wire S1,S2;
    wire [7:0] E1,E2; //exponents
    wire [22:0] M1,M2; //mantissas

    Split SP1(A,S1,E1,M1);
    Split SP2(B,S2,E2,M2);

    wire  [7:0]Ediff;
    assign Ediff = E1 - E2;

    wire [31:0] N1,N2,N3;
    assign N1 = {|E1,M1};   
    assign N2 = {|E2,M2};   

    BarrelShift BS(N2,Ediff,N3);
    wire [31:0]N4;
    assign N4 = {32{S1^S2}}^N3;

    wire [31:0]Sum;
    wire Carry;
    RDA C1(N1,N4,S1^S2,Sum,Carry);

    reg [22:0] M3,tmp;
    reg [7:0] E3;

    integer i =0;

    //normalising the final result
    always @(Sum)
    begin
        if(Sum[24]==1)
        begin
            M3 = Sum[23:1];
            E3 = E1 + 1'b1;
        end
        else if(Sum[23]==0)
        begin
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
        begin
            M3 = Sum[22:0];
            E3 = E1;
        end
    end

    reg [31:0]out;
    always @ (E3 or M3)
    begin
        out = {S1,{8{|Sum}} & E3,M3}; //combining the final answers to ieee-754 rep
    end

    //Testbench
    initial
    begin
        #0 I1={1'b0,{8'b10000001},23'b10000000000000000000000}; I2={1'b0,{8'b10000010},23'b00000000000000000000000};
        #10 I1={1'b0,{8'b10000010},23'b00111000000000000000000}; I2={1'b0,{8'b01111110},23'b00100000000000000000000};
    end
    initial
    begin
        $monitor($time," A=%b B=%b\tC=%b\t\n",I1,I2,out);
        $dumpfile("fpa.vcd");
		$dumpvars;
    end

endmodule
