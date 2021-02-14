module fulladder(a,b,cin,s,cout);

input a,b,cin;
output s,cout;

assign s=a^b^cin;
assign cout=(a&b)|(b&cin)|(a&cin);

endmodule


module csaveadder(X,Y,Z,U,V);
input [63:0]X;
input [63:0]Y;
input [63:0]Z;
output [63:0]U;
output [63:0]V;
wire temp;

assign V[0]=0;

fulladder fa0(X[0],Y[0],Z[0],U[0],V[1]);
fulladder fa1(X[1],Y[1],Z[1],U[1],V[2]);
fulladder fa2(X[2],Y[2],Z[2],U[2],V[3]);
fulladder fa3(X[3],Y[3],Z[3],U[3],V[4]);
fulladder fa4(X[4],Y[4],Z[4],U[4],V[5]);
fulladder fa5(X[5],Y[5],Z[5],U[5],V[6]);
fulladder fa6(X[6],Y[6],Z[6],U[6],V[7]);
fulladder fa7(X[7],Y[7],Z[7],U[7],V[8]);
fulladder fa8(X[8],Y[8],Z[8],U[8],V[9]);
fulladder fa9(X[9],Y[9],Z[9],U[9],V[10]);
fulladder fa10(X[10],Y[10],Z[10],U[10],V[11]);
fulladder fa11(X[11],Y[11],Z[11],U[11],V[12]);
fulladder fa12(X[12],Y[12],Z[12],U[12],V[13]);
fulladder fa13(X[13],Y[13],Z[13],U[13],V[14]);
fulladder fa14(X[14],Y[14],Z[14],U[14],V[15]);
fulladder fa15(X[15],Y[15],Z[15],U[15],V[16]);
fulladder fa16(X[16],Y[16],Z[16],U[16],V[17]);
fulladder fa17(X[17],Y[17],Z[17],U[17],V[18]);
fulladder fa18(X[18],Y[18],Z[18],U[18],V[19]);
fulladder fa19(X[19],Y[19],Z[19],U[19],V[20]);
fulladder fa20(X[20],Y[20],Z[20],U[20],V[21]);
fulladder fa21(X[21],Y[21],Z[21],U[21],V[22]);
fulladder fa22(X[22],Y[22],Z[22],U[22],V[23]);
fulladder fa23(X[23],Y[23],Z[23],U[23],V[24]);
fulladder fa24(X[24],Y[24],Z[24],U[24],V[25]);
fulladder fa25(X[25],Y[25],Z[25],U[25],V[26]);
fulladder fa26(X[26],Y[26],Z[26],U[26],V[27]);
fulladder fa27(X[27],Y[27],Z[27],U[27],V[28]);
fulladder fa28(X[28],Y[28],Z[28],U[28],V[29]);
fulladder fa29(X[29],Y[29],Z[29],U[29],V[30]);
fulladder fa30(X[30],Y[30],Z[30],U[30],V[31]);
fulladder fa31(X[31],Y[31],Z[31],U[31],V[32]);
fulladder fa32(X[32],Y[32],Z[32],U[32],V[33]);
fulladder fa33(X[33],Y[33],Z[33],U[33],V[34]);
fulladder fa34(X[34],Y[34],Z[34],U[34],V[35]);
fulladder fa35(X[35],Y[35],Z[35],U[35],V[36]);
fulladder fa36(X[36],Y[36],Z[36],U[36],V[37]);
fulladder fa37(X[37],Y[37],Z[37],U[37],V[38]);
fulladder fa38(X[38],Y[38],Z[38],U[38],V[39]);
fulladder fa39(X[39],Y[39],Z[39],U[39],V[40]);
fulladder fa40(X[40],Y[40],Z[40],U[40],V[41]);
fulladder fa41(X[41],Y[41],Z[41],U[41],V[42]);
fulladder fa42(X[42],Y[42],Z[42],U[42],V[43]);
fulladder fa43(X[43],Y[43],Z[43],U[43],V[44]);
fulladder fa44(X[44],Y[44],Z[44],U[44],V[45]);
fulladder fa45(X[45],Y[45],Z[45],U[45],V[46]);
fulladder fa46(X[46],Y[46],Z[46],U[46],V[47]);
fulladder fa47(X[47],Y[47],Z[47],U[47],V[48]);
fulladder fa48(X[48],Y[48],Z[48],U[48],V[49]);
fulladder fa49(X[49],Y[49],Z[49],U[49],V[50]);
fulladder fa50(X[50],Y[50],Z[50],U[50],V[51]);
fulladder fa51(X[51],Y[51],Z[51],U[51],V[52]);
fulladder fa52(X[52],Y[52],Z[52],U[52],V[53]);
fulladder fa53(X[53],Y[53],Z[53],U[53],V[54]);
fulladder fa54(X[54],Y[54],Z[54],U[54],V[55]);
fulladder fa55(X[55],Y[55],Z[55],U[55],V[56]);
fulladder fa56(X[56],Y[56],Z[56],U[56],V[57]);
fulladder fa57(X[57],Y[57],Z[57],U[57],V[58]);
fulladder fa58(X[58],Y[58],Z[58],U[58],V[59]);
fulladder fa59(X[59],Y[59],Z[59],U[59],V[60]);
fulladder fa60(X[60],Y[60],Z[60],U[60],V[61]);
fulladder fa61(X[61],Y[61],Z[61],U[61],V[62]);
fulladder fa62(X[62],Y[62],Z[62],U[62],V[63]);
fulladder fa63(X[63],Y[63],Z[63],U[63],temp);

endmodule