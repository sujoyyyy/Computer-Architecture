module Decoder_5Bit (inp, out);

input [5:1] inp;
output [32:1] out;

assign out[1] = (~inp[5] & ~inp[4] & ~inp[3] & ~inp[2] & ~inp[1]);
assign out[2] = (~inp[5] & ~inp[4] & ~inp[3] & ~inp[2] & inp[1]);
assign out[3] = (~inp[5] & ~inp[4] & ~inp[3] & inp[2] & ~inp[1]);
assign out[4] = (~inp[5] & ~inp[4] & ~inp[3] & inp[2] & inp[1]);
assign out[5] = (~inp[5] & ~inp[4] & inp[3] & ~inp[2] & ~inp[1]);
assign out[6] = (~inp[5] & ~inp[4] & inp[3] & ~inp[2] & inp[1]);
assign out[7] = (~inp[5] & ~inp[4] & inp[3] & inp[2] & ~inp[1]);
assign out[8] = (~inp[5] & ~inp[4] & inp[3] & inp[2] & inp[1]);

assign out[9] = (~inp[5] & inp[4] & ~inp[3] & ~inp[2] & ~inp[1]);
assign out[10] = (~inp[5] & inp[4] & ~inp[3] & ~inp[2] & inp[1]);
assign out[11] = (~inp[5] & inp[4] & ~inp[3] & inp[2] & ~inp[1]);
assign out[12] = (~inp[5] & inp[4] & ~inp[3] & inp[2] & inp[1]);
assign out[13] = (~inp[5] & inp[4] & inp[3] & ~inp[2] & ~inp[1]);
assign out[14] = (~inp[5] & inp[4] & inp[3] & ~inp[2] & inp[1]);
assign out[15] = (~inp[5] & inp[4] & inp[3] & inp[2] & ~inp[1]);
assign out[16] = (~inp[5] & inp[4] & inp[3] & inp[2] & inp[1]);

assign out[17] = (inp[5] & ~inp[4] & ~inp[3] & ~inp[2] & ~inp[1]);
assign out[18] = (inp[5] & ~inp[4] & ~inp[3] & ~inp[2] & inp[1]);
assign out[19] = (inp[5] & ~inp[4] & ~inp[3] & inp[2] & ~inp[1]);
assign out[20] = (inp[5] & ~inp[4] & ~inp[3] & inp[2] & inp[1]);
assign out[21] = (inp[5] & ~inp[4] & inp[3] & ~inp[2] & ~inp[1]);
assign out[22] = (inp[5] & ~inp[4] & inp[3] & ~inp[2] & inp[1]);
assign out[23] = (inp[5] & ~inp[4] & inp[3] & inp[2] & ~inp[1]);
assign out[24] = (inp[5] & ~inp[4] & inp[3] & inp[2] & inp[1]);

assign out[25] = (inp[5] & inp[4] & ~inp[3] & ~inp[2] & ~inp[1]);
assign out[26] = (inp[5] & inp[4] & ~inp[3] & ~inp[2] & inp[1]);
assign out[27] = (inp[5] & inp[4] & ~inp[3] & inp[2] & ~inp[1]);
assign out[28] = (inp[5] & inp[4] & ~inp[3] & inp[2] & inp[1]);
assign out[29] = (inp[5] & inp[4] & inp[3] & ~inp[2] & ~inp[1]);
assign out[30] = (inp[5] & inp[4] & inp[3] & ~inp[2] & inp[1]);
assign out[31] = (inp[5] & inp[4] & inp[3] & inp[2] & ~inp[1]);
assign out[32] = (inp[5] & inp[4] & inp[3] & inp[2] & inp[1]);

endmodule