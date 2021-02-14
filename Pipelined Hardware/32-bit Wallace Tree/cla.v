module cla32(cout,s,a,b,cin);
output [63:0]s;
output cout;
input [63:0]a,b;
input cin;
wire [63:0]g,p,c,s;

assign g=a&b;
assign p=a^b;


assign c[0]=g[0]|(p[0]&cin);
assign c[1]=g[1]|(p[1]&(g[0]|(p[0]&cin)));
assign c[2]=g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))));
assign c[3]=g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))))));
assign c[4]=g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))))))));
assign c[5]=g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))))))))));
assign c[6]=g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))))))))))));
assign c[7]=g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))))))))))))));
assign c[8]=g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))))))))))))))));
assign c[9]=g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))))))))))))))))));
assign c[10]=g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))))))))))))))))))));
assign c[11]=g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))))))))))))))))))))));
assign c[12]=g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))))))))))))))))))))))));
assign c[13]=g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))))))))))))))))))))))))));
assign c[14]=g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))))))))))))))))))))))))))));
assign c[15]=g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))))))))))))))))))))))))))))));
assign c[16]=g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))))))))))))))))))))))))))))))));
assign c[17]=g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))))))))))))))))))))))))))))))))));
assign c[18]=g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))))))))))))))))))))))))))))))))))));
assign c[19]=g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))));
assign c[20]=g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))));
assign c[21]=g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))));
assign c[22]=g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))))));
assign c[23]=g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))))))));
assign c[24]=g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))))))))));
assign c[25]=g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))))))))))));
assign c[26]=g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))))))))))))));
assign c[27]=g[27]|(p[27]&(g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))))))))))))))));
assign c[28]=g[28]|(p[28]&(g[27]|(p[27]&(g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))))))))))))))))));
assign c[29]=g[29]|(p[29]&(g[28]|(p[28]&(g[27]|(p[27]&(g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
assign c[30]=g[30]|(p[30]&(g[29]|(p[29]&(g[28]|(p[28]&(g[27]|(p[27]&(g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
assign c[31]=g[31]|(p[31]&(g[30]|(p[30]&(g[29]|(p[29]&(g[28]|(p[28]&(g[27]|(p[27]&(g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
assign c[32]=g[32]|(p[32]&(g[31]|(p[31]&(g[30]|(p[30]&(g[29]|(p[29]&(g[28]|(p[28]&(g[27]|(p[27]&(g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
assign c[33]=g[33]|(p[33]&(g[32]|(p[32]&(g[31]|(p[31]&(g[30]|(p[30]&(g[29]|(p[29]&(g[28]|(p[28]&(g[27]|(p[27]&(g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
assign c[34]=g[34]|(p[34]&(g[33]|(p[33]&(g[32]|(p[32]&(g[31]|(p[31]&(g[30]|(p[30]&(g[29]|(p[29]&(g[28]|(p[28]&(g[27]|(p[27]&(g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
assign c[35]=g[35]|(p[35]&(g[34]|(p[34]&(g[33]|(p[33]&(g[32]|(p[32]&(g[31]|(p[31]&(g[30]|(p[30]&(g[29]|(p[29]&(g[28]|(p[28]&(g[27]|(p[27]&(g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
assign c[36]=g[36]|(p[36]&(g[35]|(p[35]&(g[34]|(p[34]&(g[33]|(p[33]&(g[32]|(p[32]&(g[31]|(p[31]&(g[30]|(p[30]&(g[29]|(p[29]&(g[28]|(p[28]&(g[27]|(p[27]&(g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
assign c[37]=g[37]|(p[37]&(g[36]|(p[36]&(g[35]|(p[35]&(g[34]|(p[34]&(g[33]|(p[33]&(g[32]|(p[32]&(g[31]|(p[31]&(g[30]|(p[30]&(g[29]|(p[29]&(g[28]|(p[28]&(g[27]|(p[27]&(g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
assign c[38]=g[38]|(p[38]&(g[37]|(p[37]&(g[36]|(p[36]&(g[35]|(p[35]&(g[34]|(p[34]&(g[33]|(p[33]&(g[32]|(p[32]&(g[31]|(p[31]&(g[30]|(p[30]&(g[29]|(p[29]&(g[28]|(p[28]&(g[27]|(p[27]&(g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
assign c[39]=g[39]|(p[39]&(g[38]|(p[38]&(g[37]|(p[37]&(g[36]|(p[36]&(g[35]|(p[35]&(g[34]|(p[34]&(g[33]|(p[33]&(g[32]|(p[32]&(g[31]|(p[31]&(g[30]|(p[30]&(g[29]|(p[29]&(g[28]|(p[28]&(g[27]|(p[27]&(g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
assign c[40]=g[40]|(p[40]&(g[39]|(p[39]&(g[38]|(p[38]&(g[37]|(p[37]&(g[36]|(p[36]&(g[35]|(p[35]&(g[34]|(p[34]&(g[33]|(p[33]&(g[32]|(p[32]&(g[31]|(p[31]&(g[30]|(p[30]&(g[29]|(p[29]&(g[28]|(p[28]&(g[27]|(p[27]&(g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
assign c[41]=g[41]|(p[41]&(g[40]|(p[40]&(g[39]|(p[39]&(g[38]|(p[38]&(g[37]|(p[37]&(g[36]|(p[36]&(g[35]|(p[35]&(g[34]|(p[34]&(g[33]|(p[33]&(g[32]|(p[32]&(g[31]|(p[31]&(g[30]|(p[30]&(g[29]|(p[29]&(g[28]|(p[28]&(g[27]|(p[27]&(g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
assign c[42]=g[42]|(p[42]&(g[41]|(p[41]&(g[40]|(p[40]&(g[39]|(p[39]&(g[38]|(p[38]&(g[37]|(p[37]&(g[36]|(p[36]&(g[35]|(p[35]&(g[34]|(p[34]&(g[33]|(p[33]&(g[32]|(p[32]&(g[31]|(p[31]&(g[30]|(p[30]&(g[29]|(p[29]&(g[28]|(p[28]&(g[27]|(p[27]&(g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
assign c[43]=g[43]|(p[43]&(g[42]|(p[42]&(g[41]|(p[41]&(g[40]|(p[40]&(g[39]|(p[39]&(g[38]|(p[38]&(g[37]|(p[37]&(g[36]|(p[36]&(g[35]|(p[35]&(g[34]|(p[34]&(g[33]|(p[33]&(g[32]|(p[32]&(g[31]|(p[31]&(g[30]|(p[30]&(g[29]|(p[29]&(g[28]|(p[28]&(g[27]|(p[27]&(g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
assign c[44]=g[44]|(p[44]&(g[43]|(p[43]&(g[42]|(p[42]&(g[41]|(p[41]&(g[40]|(p[40]&(g[39]|(p[39]&(g[38]|(p[38]&(g[37]|(p[37]&(g[36]|(p[36]&(g[35]|(p[35]&(g[34]|(p[34]&(g[33]|(p[33]&(g[32]|(p[32]&(g[31]|(p[31]&(g[30]|(p[30]&(g[29]|(p[29]&(g[28]|(p[28]&(g[27]|(p[27]&(g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
assign c[45]=g[45]|(p[45]&(g[44]|(p[44]&(g[43]|(p[43]&(g[42]|(p[42]&(g[41]|(p[41]&(g[40]|(p[40]&(g[39]|(p[39]&(g[38]|(p[38]&(g[37]|(p[37]&(g[36]|(p[36]&(g[35]|(p[35]&(g[34]|(p[34]&(g[33]|(p[33]&(g[32]|(p[32]&(g[31]|(p[31]&(g[30]|(p[30]&(g[29]|(p[29]&(g[28]|(p[28]&(g[27]|(p[27]&(g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
assign c[46]=g[46]|(p[46]&(g[45]|(p[45]&(g[44]|(p[44]&(g[43]|(p[43]&(g[42]|(p[42]&(g[41]|(p[41]&(g[40]|(p[40]&(g[39]|(p[39]&(g[38]|(p[38]&(g[37]|(p[37]&(g[36]|(p[36]&(g[35]|(p[35]&(g[34]|(p[34]&(g[33]|(p[33]&(g[32]|(p[32]&(g[31]|(p[31]&(g[30]|(p[30]&(g[29]|(p[29]&(g[28]|(p[28]&(g[27]|(p[27]&(g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
assign c[47]=g[47]|(p[47]&(g[46]|(p[46]&(g[45]|(p[45]&(g[44]|(p[44]&(g[43]|(p[43]&(g[42]|(p[42]&(g[41]|(p[41]&(g[40]|(p[40]&(g[39]|(p[39]&(g[38]|(p[38]&(g[37]|(p[37]&(g[36]|(p[36]&(g[35]|(p[35]&(g[34]|(p[34]&(g[33]|(p[33]&(g[32]|(p[32]&(g[31]|(p[31]&(g[30]|(p[30]&(g[29]|(p[29]&(g[28]|(p[28]&(g[27]|(p[27]&(g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
assign c[48]=g[48]|(p[48]&(g[47]|(p[47]&(g[46]|(p[46]&(g[45]|(p[45]&(g[44]|(p[44]&(g[43]|(p[43]&(g[42]|(p[42]&(g[41]|(p[41]&(g[40]|(p[40]&(g[39]|(p[39]&(g[38]|(p[38]&(g[37]|(p[37]&(g[36]|(p[36]&(g[35]|(p[35]&(g[34]|(p[34]&(g[33]|(p[33]&(g[32]|(p[32]&(g[31]|(p[31]&(g[30]|(p[30]&(g[29]|(p[29]&(g[28]|(p[28]&(g[27]|(p[27]&(g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
assign c[49]=g[49]|(p[49]&(g[48]|(p[48]&(g[47]|(p[47]&(g[46]|(p[46]&(g[45]|(p[45]&(g[44]|(p[44]&(g[43]|(p[43]&(g[42]|(p[42]&(g[41]|(p[41]&(g[40]|(p[40]&(g[39]|(p[39]&(g[38]|(p[38]&(g[37]|(p[37]&(g[36]|(p[36]&(g[35]|(p[35]&(g[34]|(p[34]&(g[33]|(p[33]&(g[32]|(p[32]&(g[31]|(p[31]&(g[30]|(p[30]&(g[29]|(p[29]&(g[28]|(p[28]&(g[27]|(p[27]&(g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
assign c[50]=g[50]|(p[50]&(g[49]|(p[49]&(g[48]|(p[48]&(g[47]|(p[47]&(g[46]|(p[46]&(g[45]|(p[45]&(g[44]|(p[44]&(g[43]|(p[43]&(g[42]|(p[42]&(g[41]|(p[41]&(g[40]|(p[40]&(g[39]|(p[39]&(g[38]|(p[38]&(g[37]|(p[37]&(g[36]|(p[36]&(g[35]|(p[35]&(g[34]|(p[34]&(g[33]|(p[33]&(g[32]|(p[32]&(g[31]|(p[31]&(g[30]|(p[30]&(g[29]|(p[29]&(g[28]|(p[28]&(g[27]|(p[27]&(g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
assign c[51]=g[51]|(p[51]&(g[50]|(p[50]&(g[49]|(p[49]&(g[48]|(p[48]&(g[47]|(p[47]&(g[46]|(p[46]&(g[45]|(p[45]&(g[44]|(p[44]&(g[43]|(p[43]&(g[42]|(p[42]&(g[41]|(p[41]&(g[40]|(p[40]&(g[39]|(p[39]&(g[38]|(p[38]&(g[37]|(p[37]&(g[36]|(p[36]&(g[35]|(p[35]&(g[34]|(p[34]&(g[33]|(p[33]&(g[32]|(p[32]&(g[31]|(p[31]&(g[30]|(p[30]&(g[29]|(p[29]&(g[28]|(p[28]&(g[27]|(p[27]&(g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
assign c[52]=g[52]|(p[51]&(g[51]|(p[51]&(g[50]|(p[50]&(g[49]|(p[49]&(g[48]|(p[48]&(g[47]|(p[47]&(g[46]|(p[46]&(g[45]|(p[45]&(g[44]|(p[44]&(g[43]|(p[43]&(g[42]|(p[42]&(g[41]|(p[41]&(g[40]|(p[40]&(g[39]|(p[39]&(g[38]|(p[38]&(g[37]|(p[37]&(g[36]|(p[36]&(g[35]|(p[35]&(g[34]|(p[34]&(g[33]|(p[33]&(g[32]|(p[32]&(g[31]|(p[31]&(g[30]|(p[30]&(g[29]|(p[29]&(g[28]|(p[28]&(g[27]|(p[27]&(g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
assign c[53]=g[53]|(p[53]&(g[52]|(p[51]&(g[51]|(p[51]&(g[50]|(p[50]&(g[49]|(p[49]&(g[48]|(p[48]&(g[47]|(p[47]&(g[46]|(p[46]&(g[45]|(p[45]&(g[44]|(p[44]&(g[43]|(p[43]&(g[42]|(p[42]&(g[41]|(p[41]&(g[40]|(p[40]&(g[39]|(p[39]&(g[38]|(p[38]&(g[37]|(p[37]&(g[36]|(p[36]&(g[35]|(p[35]&(g[34]|(p[34]&(g[33]|(p[33]&(g[32]|(p[32]&(g[31]|(p[31]&(g[30]|(p[30]&(g[29]|(p[29]&(g[28]|(p[28]&(g[27]|(p[27]&(g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
assign c[54]=g[54]|(p[54]&(g[53]|(p[53]&(g[52]|(p[51]&(g[51]|(p[51]&(g[50]|(p[50]&(g[49]|(p[49]&(g[48]|(p[48]&(g[47]|(p[47]&(g[46]|(p[46]&(g[45]|(p[45]&(g[44]|(p[44]&(g[43]|(p[43]&(g[42]|(p[42]&(g[41]|(p[41]&(g[40]|(p[40]&(g[39]|(p[39]&(g[38]|(p[38]&(g[37]|(p[37]&(g[36]|(p[36]&(g[35]|(p[35]&(g[34]|(p[34]&(g[33]|(p[33]&(g[32]|(p[32]&(g[31]|(p[31]&(g[30]|(p[30]&(g[29]|(p[29]&(g[28]|(p[28]&(g[27]|(p[27]&(g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
assign c[55]=g[55]|(p[55]&(g[54]|(p[54]&(g[53]|(p[53]&(g[52]|(p[51]&(g[51]|(p[51]&(g[50]|(p[50]&(g[49]|(p[49]&(g[48]|(p[48]&(g[47]|(p[47]&(g[46]|(p[46]&(g[45]|(p[45]&(g[44]|(p[44]&(g[43]|(p[43]&(g[42]|(p[42]&(g[41]|(p[41]&(g[40]|(p[40]&(g[39]|(p[39]&(g[38]|(p[38]&(g[37]|(p[37]&(g[36]|(p[36]&(g[35]|(p[35]&(g[34]|(p[34]&(g[33]|(p[33]&(g[32]|(p[32]&(g[31]|(p[31]&(g[30]|(p[30]&(g[29]|(p[29]&(g[28]|(p[28]&(g[27]|(p[27]&(g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
assign c[56]=g[56]|(p[56]&(g[55]|(p[55]&(g[54]|(p[54]&(g[53]|(p[53]&(g[52]|(p[51]&(g[51]|(p[51]&(g[50]|(p[50]&(g[49]|(p[49]&(g[48]|(p[48]&(g[47]|(p[47]&(g[46]|(p[46]&(g[45]|(p[45]&(g[44]|(p[44]&(g[43]|(p[43]&(g[42]|(p[42]&(g[41]|(p[41]&(g[40]|(p[40]&(g[39]|(p[39]&(g[38]|(p[38]&(g[37]|(p[37]&(g[36]|(p[36]&(g[35]|(p[35]&(g[34]|(p[34]&(g[33]|(p[33]&(g[32]|(p[32]&(g[31]|(p[31]&(g[30]|(p[30]&(g[29]|(p[29]&(g[28]|(p[28]&(g[27]|(p[27]&(g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
assign c[57]=g[57]|(p[57]&(g[56]|(p[56]&(g[55]|(p[55]&(g[54]|(p[54]&(g[53]|(p[53]&(g[52]|(p[51]&(g[51]|(p[51]&(g[50]|(p[50]&(g[49]|(p[49]&(g[48]|(p[48]&(g[47]|(p[47]&(g[46]|(p[46]&(g[45]|(p[45]&(g[44]|(p[44]&(g[43]|(p[43]&(g[42]|(p[42]&(g[41]|(p[41]&(g[40]|(p[40]&(g[39]|(p[39]&(g[38]|(p[38]&(g[37]|(p[37]&(g[36]|(p[36]&(g[35]|(p[35]&(g[34]|(p[34]&(g[33]|(p[33]&(g[32]|(p[32]&(g[31]|(p[31]&(g[30]|(p[30]&(g[29]|(p[29]&(g[28]|(p[28]&(g[27]|(p[27]&(g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
assign c[58]=g[58]|(p[58]&(g[57]|(p[57]&(g[56]|(p[56]&(g[55]|(p[55]&(g[54]|(p[54]&(g[53]|(p[53]&(g[52]|(p[51]&(g[51]|(p[51]&(g[50]|(p[50]&(g[49]|(p[49]&(g[48]|(p[48]&(g[47]|(p[47]&(g[46]|(p[46]&(g[45]|(p[45]&(g[44]|(p[44]&(g[43]|(p[43]&(g[42]|(p[42]&(g[41]|(p[41]&(g[40]|(p[40]&(g[39]|(p[39]&(g[38]|(p[38]&(g[37]|(p[37]&(g[36]|(p[36]&(g[35]|(p[35]&(g[34]|(p[34]&(g[33]|(p[33]&(g[32]|(p[32]&(g[31]|(p[31]&(g[30]|(p[30]&(g[29]|(p[29]&(g[28]|(p[28]&(g[27]|(p[27]&(g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
assign c[59]=g[59]|(p[59]&(g[58]|(p[58]&(g[57]|(p[57]&(g[56]|(p[56]&(g[55]|(p[55]&(g[54]|(p[54]&(g[53]|(p[53]&(g[52]|(p[51]&(g[51]|(p[51]&(g[50]|(p[50]&(g[49]|(p[49]&(g[48]|(p[48]&(g[47]|(p[47]&(g[46]|(p[46]&(g[45]|(p[45]&(g[44]|(p[44]&(g[43]|(p[43]&(g[42]|(p[42]&(g[41]|(p[41]&(g[40]|(p[40]&(g[39]|(p[39]&(g[38]|(p[38]&(g[37]|(p[37]&(g[36]|(p[36]&(g[35]|(p[35]&(g[34]|(p[34]&(g[33]|(p[33]&(g[32]|(p[32]&(g[31]|(p[31]&(g[30]|(p[30]&(g[29]|(p[29]&(g[28]|(p[28]&(g[27]|(p[27]&(g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
assign c[60]=g[60]|(p[60]&(g[59]|(p[59]&(g[58]|(p[58]&(g[57]|(p[57]&(g[56]|(p[56]&(g[55]|(p[55]&(g[54]|(p[54]&(g[53]|(p[53]&(g[52]|(p[51]&(g[51]|(p[51]&(g[50]|(p[50]&(g[49]|(p[49]&(g[48]|(p[48]&(g[47]|(p[47]&(g[46]|(p[46]&(g[45]|(p[45]&(g[44]|(p[44]&(g[43]|(p[43]&(g[42]|(p[42]&(g[41]|(p[41]&(g[40]|(p[40]&(g[39]|(p[39]&(g[38]|(p[38]&(g[37]|(p[37]&(g[36]|(p[36]&(g[35]|(p[35]&(g[34]|(p[34]&(g[33]|(p[33]&(g[32]|(p[32]&(g[31]|(p[31]&(g[30]|(p[30]&(g[29]|(p[29]&(g[28]|(p[28]&(g[27]|(p[27]&(g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
assign c[61]=g[61]|(p[61]&(g[60]|(p[60]&(g[59]|(p[59]&(g[58]|(p[58]&(g[57]|(p[57]&(g[56]|(p[56]&(g[55]|(p[55]&(g[54]|(p[54]&(g[53]|(p[53]&(g[52]|(p[51]&(g[51]|(p[51]&(g[50]|(p[50]&(g[49]|(p[49]&(g[48]|(p[48]&(g[47]|(p[47]&(g[46]|(p[46]&(g[45]|(p[45]&(g[44]|(p[44]&(g[43]|(p[43]&(g[42]|(p[42]&(g[41]|(p[41]&(g[40]|(p[40]&(g[39]|(p[39]&(g[38]|(p[38]&(g[37]|(p[37]&(g[36]|(p[36]&(g[35]|(p[35]&(g[34]|(p[34]&(g[33]|(p[33]&(g[32]|(p[32]&(g[31]|(p[31]&(g[30]|(p[30]&(g[29]|(p[29]&(g[28]|(p[28]&(g[27]|(p[27]&(g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
assign c[62]=g[62]|(p[62]&(g[61]|(p[61]&(g[60]|(p[60]&(g[59]|(p[59]&(g[58]|(p[58]&(g[57]|(p[57]&(g[56]|(p[56]&(g[55]|(p[55]&(g[54]|(p[54]&(g[53]|(p[53]&(g[52]|(p[51]&(g[51]|(p[51]&(g[50]|(p[50]&(g[49]|(p[49]&(g[48]|(p[48]&(g[47]|(p[47]&(g[46]|(p[46]&(g[45]|(p[45]&(g[44]|(p[44]&(g[43]|(p[43]&(g[42]|(p[42]&(g[41]|(p[41]&(g[40]|(p[40]&(g[39]|(p[39]&(g[38]|(p[38]&(g[37]|(p[37]&(g[36]|(p[36]&(g[35]|(p[35]&(g[34]|(p[34]&(g[33]|(p[33]&(g[32]|(p[32]&(g[31]|(p[31]&(g[30]|(p[30]&(g[29]|(p[29]&(g[28]|(p[28]&(g[27]|(p[27]&(g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
assign c[63]=g[63]|(p[63]&(g[62]|(p[62]&(g[61]|(p[61]&(g[60]|(p[60]&(g[59]|(p[59]&(g[58]|(p[58]&(g[57]|(p[57]&(g[56]|(p[56]&(g[55]|(p[55]&(g[54]|(p[54]&(g[53]|(p[53]&(g[52]|(p[51]&(g[51]|(p[51]&(g[50]|(p[50]&(g[49]|(p[49]&(g[48]|(p[48]&(g[47]|(p[47]&(g[46]|(p[46]&(g[45]|(p[45]&(g[44]|(p[44]&(g[43]|(p[43]&(g[42]|(p[42]&(g[41]|(p[41]&(g[40]|(p[40]&(g[39]|(p[39]&(g[38]|(p[38]&(g[37]|(p[37]&(g[36]|(p[36]&(g[35]|(p[35]&(g[34]|(p[34]&(g[33]|(p[33]&(g[32]|(p[32]&(g[31]|(p[31]&(g[30]|(p[30]&(g[29]|(p[29]&(g[28]|(p[28]&(g[27]|(p[27]&(g[26]|(p[26]&(g[25]|(p[25]&(g[24]|(p[24]&(g[23]|(p[23]&(g[22]|(p[22]&(g[21]|(p[21]&(g[20]|(g[20]&(g[19]|(p[19]&g[18]|(p[18]&(g[17]|(p[17]&(g[16]|(p[16]&(g[15]|(p[15]&(g[14]|(p[14]&(g[13]|(p[13]&(g[12]|(p[12]&(g[11]|(p[11]&(g[10]|(p[10]&(g[9]|(p[9]&(g[8]|(p[8]&(g[7]|(p[7]&(g[6]|(p[6]&(g[5]|(p[5]&(g[4]|(p[4]&(g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));


assign s[0]=a[0]^b[0]^cin;
assign s[1]=a[1]^b[1]^c[0];
assign s[2]=a[2]^b[2]^c[1];
assign s[3]=a[3]^b[3]^c[2];
assign s[4]=a[4]^b[4]^c[3];
assign s[5]=a[5]^b[5]^c[4];
assign s[6]=a[6]^b[6]^c[5];
assign s[7]=a[7]^b[7]^c[6];
assign s[8]=a[8]^b[8]^c[7];
assign s[9]=a[9]^b[9]^c[8];
assign s[10]=a[10]^b[10]^c[9];
assign s[11]=a[11]^b[11]^c[10]; 
assign s[12]=a[12]^b[12]^c[11];
assign s[13]=a[13]^b[13]^c[12];
assign s[14]=a[14]^b[14]^c[13];
assign s[15]=a[15]^b[15]^c[14];
assign s[16]=a[16]^b[16]^c[15];
assign s[17]=a[17]^b[17]^c[16];
assign s[18]=a[18]^b[18]^c[17];
assign s[19]=a[19]^b[19]^c[18];
assign s[20]=a[20]^b[20]^c[19];
assign s[21]=a[21]^b[21]^c[20];
assign s[22]=a[22]^b[22]^c[21];
assign s[23]=a[23]^b[23]^c[22];
assign s[24]=a[24]^b[24]^c[23];
assign s[25]=a[25]^b[25]^c[24];
assign s[26]=a[26]^b[26]^c[25];
assign s[27]=a[27]^b[27]^c[26];
assign s[28]=a[28]^b[28]^c[27];
assign s[29]=a[29]^b[29]^c[28];
assign s[30]=a[30]^b[30]^c[29];
assign s[31]=a[31]^b[31]^c[30];
assign s[32]=a[32]^b[32]^c[31];
assign s[33]=a[33]^b[33]^c[32];
assign s[34]=a[34]^b[34]^c[33];
assign s[35]=a[35]^b[35]^c[34];
assign s[36]=a[36]^b[36]^c[35];
assign s[37]=a[37]^b[37]^c[36];
assign s[38]=a[38]^b[38]^c[37];
assign s[39]=a[39]^b[39]^c[38];
assign s[40]=a[40]^b[40]^c[39];
assign s[41]=a[41]^b[41]^c[40];
assign s[42]=a[42]^b[42]^c[41];
assign s[43]=a[43]^b[43]^c[42];
assign s[44]=a[44]^b[44]^c[43];
assign s[45]=a[45]^b[45]^c[44];
assign s[46]=a[46]^b[46]^c[45];
assign s[47]=a[47]^b[47]^c[46];
assign s[48]=a[48]^b[48]^c[47];
assign s[49]=a[49]^b[49]^c[48];
assign s[50]=a[50]^b[50]^c[49];
assign s[51]=a[51]^b[51]^c[50];
assign s[52]=a[52]^b[52]^c[51];
assign s[53]=a[53]^b[53]^c[52];
assign s[54]=a[54]^b[54]^c[53];
assign s[55]=a[55]^b[55]^c[54];
assign s[56]=a[56]^b[56]^c[55];
assign s[57]=a[57]^b[57]^c[56];
assign s[58]=a[58]^b[58]^c[57];
assign s[59]=a[59]^b[59]^c[58];
assign s[60]=a[60]^b[60]^c[59];
assign s[61]=a[61]^b[61]^c[60];
assign s[62]=a[62]^b[62]^c[61];
assign s[63]=a[63]^b[63]^c[62];

assign cout=c[63];
endmodule

