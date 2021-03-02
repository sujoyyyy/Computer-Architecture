`include "Cla/kpg.v"
`include "Cla/ppc1.v"
module adder(si,xout,a,b,xin,clk,rst);

input [63:0] a,b;
input[7:0] xin;
output [64:0][7:0]x;
integer i=0;
input clk,rst;

input [63:0] c,d,e,f;

output reg[7:0] ym;

output [7:0]xout;
  output [63:0][7:0] y ;
  output reg[63:0] si;

dff m1(a,b,rst,clk,c,d);  //pipeline-10

kpgg kpg_0(x[8:1],c[7:0],d[7:0]);
kpgg kpg_1(x[16:9],c[15:8],d[15:8]);
kpgg kpg_2(x[24:17],c[23:16],d[23:16]);
kpgg kpg_3(x[32:25],c[31:24],d[31:24]);

kpgg kpg_4(x[40:33],c[39:32],d[39:32]);
kpgg kpg_5(x[48:41],c[47:40],d[47:40]);
kpgg kpg_6(x[56:49],c[55:48],d[55:48]);
kpgg kpg_7(x[64:57],c[63:56],d[63:56]);

assign x[0]=xin;

ppc ppc_0(y[63:0],x[63:0],rst,clk,c,d,e,f);

always@(posedge clk)
begin
for(i=0;i<64;i=i+1)
begin
if(y[i]=="k")
si[i]=(e[i]^f[i])^0;
else
si[i]=(e[i]^f[i])^1;
end
end


endmodule
