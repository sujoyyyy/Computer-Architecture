`include "kpg.v"
`include "dff.v"
`include "ppc_str.v"

module adder(si,xout,a,b,xin,clk,rst);
input clk,rst;
input [31:0] a,b;
input[7:0] xin;
output [32:0][7:0]x;
output [7:0]xout;
output [31:0][7:0] y ;
output reg[31:0] si;

input [31:0] c,d,e,f;
dff m1(a,b,rst,clk,c,d); 

kpg2 kpg_0(x[8:1],c[7:0],d[7:0]);
kpg2 kpg_1(x[16:9],c[15:8],d[15:8]);
kpg2 kpg_2(x[24:17],c[23:16],d[23:16]);
kpg2 kpg_3(x[32:25],c[31:24],d[31:24]);

assign x[0]=xin;
ppc ppc_0(y[31:0],x[31:0],rst,clk,c,d,e,f);

integer i=0;
always@(posedge clk)
begin
for(i=0;i<32;i=i+1)
begin
if(y[i]=="k")
si[i]=(e[i]^f[i])^0;
else
si[i]=(e[i]^f[i])^1;
end
end

endmodule


//Testbench
module top;
reg signed [31:0]ai,bi;
reg[7:0] xin;
wire signed [31:0]si;
wire[7:0]xout;
reg clk,rst;
adder ad_0(si,xout,ai,bi,xin,clk,rst);
integer i;
initial
begin
#0 xin="k"; ai=-36; bi=36;
#7 xin="k"; ai=352; bi=18;
#7 xin="k"; ai=4; bi=67;
end

initial
begin
clk=1;
rst=0;
rst=1;
for (i=0;i<30;i++)
#1 clk=~clk;
end

initial begin
 	$monitor($time," Number1 = %0d and Number2 = %0d; \tOutput: Sum=%0d",ai,bi,si);
end
endmodule
