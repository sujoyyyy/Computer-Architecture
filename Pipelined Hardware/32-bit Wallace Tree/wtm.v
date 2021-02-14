`include "cla.v"
`include "dff.v"
`include "csa.v"
module wallace(A,B,R,carry,clk);
input [31:0]A,B;
input clk;
wire [63:0]U[63:0];
wire [63:0]V[63:0];
output [63:0]R;
output carry;
wire [63:0]P[63:0];
wire [63:0]q[63:0];
wire [63:0]q1[63:0];
wire [63:0]p1[63:0];


assign P[0]=B[0]?{32'b000,A}:64'h0000;
assign P[1]=B[1]?{32'b000,A}<<1:64'h0000;
assign P[2]=B[2]?{32'b000,A}<<2:64'h0000;
assign P[3]=B[3]?{32'b000,A}<<3:64'h0000;
assign P[4]=B[4]?{32'b000,A}<<4:64'h0000;
assign P[5]=B[5]?{32'b000,A}<<5:64'h0000;
assign P[6]=B[6]?{32'b000,A}<<6:64'h0000;
assign P[7]=B[7]?{32'b000,A}<<7:64'h0000;

assign P[8]=B[8]?{32'b000,A}<<8:64'h0000;
assign P[9]=B[9]?{32'b000,A}<<9:64'h0000;
assign P[10]=B[10]?{32'b000,A}<<10:64'h0000;
assign P[11]=B[11]?{32'b000,A}<<11:64'h0000;
assign P[12]=B[12]?{32'b000,A}<<12:64'h0000;
assign P[13]=B[13]?{32'b000,A}<<13:64'h0000;
assign P[14]=B[14]?{32'b000,A}<<14:64'h0000;
assign P[15]=B[15]?{32'b000,A}<<15:64'h0000;

assign P[16]=B[16]?{32'b000,A}<<16:64'h0000;
assign P[17]=B[17]?{32'b000,A}<<17:64'h0000;
assign P[18]=B[18]?{32'b000,A}<<18:64'h0000;
assign P[19]=B[19]?{32'b000,A}<<19:64'h0000;
assign P[20]=B[20]?{32'b000,A}<<20:64'h0000;
assign P[21]=B[21]?{32'b000,A}<<21:64'h0000;
assign P[22]=B[22]?{32'b000,A}<<22:64'h0000;
assign P[23]=B[23]?{32'b000,A}<<23:64'h0000;

assign P[24]=B[24]?{32'b000,A}<<24:64'h0000;
assign P[25]=B[25]?{32'b000,A}<<25:64'h0000;
assign P[26]=B[26]?{32'b000,A}<<26:64'h0000;
assign P[27]=B[27]?{32'b000,A}<<27:64'h0000;
assign P[28]=B[28]?{32'b000,A}<<28:64'h0000;
assign P[29]=B[29]?{32'b000,A}<<29:64'h0000;
assign P[30]=B[30]?{32'b000,A}<<30:64'h0000;
assign P[31]=B[31]?{32'b000,A}<<31:64'h0000;

//1ssst
csaveadder c1(P[0],P[1],P[2],U[0],V[0]);
d_ff f0 ( U[0],V[0], clk, q[0],q1[0]);

csaveadder c2(P[3],P[4],P[5],U[1],V[1]);
d_ff f1 ( U[1],V[1], clk, q[1],q1[1]);

csaveadder c3(P[6],P[7],P[8],U[2],V[2]);
d_ff f2 ( U[2],V[2], clk, q[2],q1[2]);

csaveadder c4(P[9],P[10],P[11],U[3],V[3]);
d_ff f3 ( U[3],V[3], clk, q[3],q1[3]);

csaveadder c5(P[12],P[13],P[14],U[4],V[4]);
d_ff f4 ( U[4],V[4], clk, q[4],q1[4]);

csaveadder c6(P[15],P[16],P[17],U[5],V[5]);
d_ff f5 ( U[5],V[5], clk, q[5],q1[5]);

csaveadder c7(P[18],P[19],P[20],U[6],V[6]);
d_ff f6 ( U[6],V[6], clk, q[6],q1[6]);

csaveadder c8(P[21],P[22],P[23],U[7],V[7]);
d_ff f7 ( U[7],V[7], clk, q[7],q1[7]);

csaveadder c9(P[24],P[25],P[26],U[8],V[8]);
d_ff f8 ( U[8],V[8], clk, q[8],q1[8]);

csaveadder c10(P[27],P[28],P[29],U[9],V[9]);
d_ff f9 ( U[9],V[9], clk, q[9],q1[9]);

d_ff f10( P[30],P[31],clk,p1[1],p1[2]);
//

//2ndd
csaveadder c11(q[0],q1[0],q[1],U[10],V[10]);
d_ff f11 ( U[10],V[10], clk, q[10],q1[10]);
 
csaveadder c12(q1[1],q[2],q1[2],U[11],V[11]);
d_ff f12 ( U[11],V[11], clk, q[11],q1[11]);

csaveadder c13(q[3],q1[3],q[4],U[12],V[12]);
d_ff f13 ( U[12],V[12], clk, q[12],q1[12]);

csaveadder c14(q1[4],q[5],q1[5],U[13],V[13]);
d_ff f14 ( U[13],V[13], clk, q[13],q1[13]);

csaveadder c15(q[6],q1[6],q[7],U[14],V[14]);
d_ff f15 ( U[14],V[14], clk, q[14],q1[14]);

csaveadder c16(q1[7],q[8],q1[8],U[15],V[15]);
d_ff f16 ( U[15],V[15], clk, q[15],q1[15]);

csaveadder c17(q[9],q1[9],p1[1],U[16],V[16]);
d_ff f17 ( U[16],V[16], clk, q[16],q1[16]);

d_ff f18 ( p1[2],p1[2],clk,p1[3],p1[4]);//p1[3]=p1[4]
//


//3rdd
csaveadder c18(q[10],q1[10],q[11],U[17],V[17]);
d_ff f19 ( U[17],V[17], clk, q[17],q1[17]);

csaveadder c19(q1[11],q[12],q1[12],U[18],V[18]);
d_ff f20 ( U[18],V[18], clk, q[18],q1[18]);

csaveadder c20(q[13],q1[13],q[14],U[19],V[19]);
d_ff f21 ( U[19],V[19], clk, q[19],q1[19]);

csaveadder c21(q1[14],q[15],q1[15],U[20],V[20]);
d_ff f22 ( U[20],V[20], clk, q[20],q1[20]);

csaveadder c22(q[16],q1[16],p1[4],U[21],V[21]);//p1[3]=p[31]
d_ff f23 ( U[21],V[21], clk, q[21],q1[21]);

d_ff f24 ( V[21],V[21], clk, p1[5],p1[6]);
//


//4th
csaveadder c23(q[17],q1[17],q[18],U[22],V[22]);
d_ff f25 ( U[22],V[22], clk, q[22],q1[22]);

csaveadder c24(q1[18],q[19],q1[19],U[23],V[23]);
d_ff f26 ( U[23],V[23], clk, q[23],q1[23]);

csaveadder c25(q[20],q1[20],q[21],U[24],V[24]);
d_ff f27 ( U[24],V[24], clk, q[24],q1[24]);

d_ff f28 ( p1[5],p1[6], clk, p1[7],p1[8]);
//


//5thhh

csaveadder c26(q[22],q1[22],q[23],U[25],V[25]);
d_ff f29 ( U[25],V[25], clk, q[25],q1[25]);

csaveadder c27(q1[23],q[24],q1[24],U[26],V[26]);
d_ff f30 ( U[26],V[26], clk, q[26],q1[26]);

d_ff f31 ( p1[7],p1[8], clk, p1[9],p1[10]);
//


//6thh
csaveadder c28(q[25],q1[25],q[26],U[27],V[27]);
d_ff f32 ( U[27],V[27], clk, q[27],q1[27]);

d_ff f33 ( p1[9],p1[10], clk, p1[11],p1[12]);
//


//7thh
csaveadder c29(q1[26],q[27],q1[27],U[28],V[28]);
d_ff f34 ( U[28],V[28], clk, q[28],q1[28]);

d_ff f35 ( p1[11],p1[12], clk, p1[13],p1[14]);

//


//8thh
csaveadder c30(q[28],q1[28],p1[13],U[29],V[29]);
d_ff f36 ( U[29],V[29], clk, q[29],q1[29]);


cla32 c000(carry,R,q[29],q1[29],1'b0);
endmodule