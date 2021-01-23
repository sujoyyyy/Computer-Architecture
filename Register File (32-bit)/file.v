`include "decoder.v"
module RegisterFile_16Bit_32Size_WithoutDFFs (mode, 
WriteAddress, WriteValue, 
ReadAddress1,
ReadValue1
);

input mode; // mode = 0 - Read Mode | mode = 1 - Write Mode

wire [32:1] RegisterFile [32:1];
wire [32:1] outRegisterFile [32:1];

input [5:1] WriteAddress;
input [32:1] WriteValue;

input [5:1] ReadAddress1;
output [32:1] ReadValue1;

// Write
wire [32:1] WriteAddressDecoded;
Decoder_5Bit writedecoder (WriteAddress, WriteAddressDecoded);
assign outRegisterFile[1] = WriteAddressDecoded[1] ? (WriteValue) : (RegisterFile[1]);
assign outRegisterFile[2] = WriteAddressDecoded[2] ? (WriteValue) : (RegisterFile[2]);
assign outRegisterFile[3] = WriteAddressDecoded[3] ? (WriteValue) : (RegisterFile[3]);
assign outRegisterFile[4] = WriteAddressDecoded[4] ? (WriteValue) : (RegisterFile[4]);
assign outRegisterFile[5] = WriteAddressDecoded[5] ? (WriteValue) : (RegisterFile[5]);
assign outRegisterFile[6] = WriteAddressDecoded[6] ? (WriteValue) : (RegisterFile[6]);
assign outRegisterFile[7] = WriteAddressDecoded[7] ? (WriteValue) : (RegisterFile[7]);
assign outRegisterFile[8] = WriteAddressDecoded[8] ? (WriteValue) : (RegisterFile[8]);
assign outRegisterFile[9] = WriteAddressDecoded[9] ? (WriteValue) : (RegisterFile[9]);
assign outRegisterFile[10] = WriteAddressDecoded[10] ? (WriteValue) : (RegisterFile[10]);
assign outRegisterFile[11] = WriteAddressDecoded[11] ? (WriteValue) : (RegisterFile[11]);
assign outRegisterFile[12] = WriteAddressDecoded[12] ? (WriteValue) : (RegisterFile[12]);
assign outRegisterFile[13] = WriteAddressDecoded[13] ? (WriteValue) : (RegisterFile[13]);
assign outRegisterFile[14] = WriteAddressDecoded[14] ? (WriteValue) : (RegisterFile[14]);
assign outRegisterFile[15] = WriteAddressDecoded[15] ? (WriteValue) : (RegisterFile[15]);
assign outRegisterFile[16] = WriteAddressDecoded[16] ? (WriteValue) : (RegisterFile[16]);
assign outRegisterFile[17] = WriteAddressDecoded[17] ? (WriteValue) : (RegisterFile[17]);
assign outRegisterFile[18] = WriteAddressDecoded[18] ? (WriteValue) : (RegisterFile[18]);
assign outRegisterFile[19] = WriteAddressDecoded[19] ? (WriteValue) : (RegisterFile[19]);
assign outRegisterFile[20] = WriteAddressDecoded[20] ? (WriteValue) : (RegisterFile[20]);
assign outRegisterFile[21] = WriteAddressDecoded[21] ? (WriteValue) : (RegisterFile[21]);
assign outRegisterFile[22] = WriteAddressDecoded[22] ? (WriteValue) : (RegisterFile[22]);
assign outRegisterFile[23] = WriteAddressDecoded[23] ? (WriteValue) : (RegisterFile[23]);
assign outRegisterFile[24] = WriteAddressDecoded[24] ? (WriteValue) : (RegisterFile[24]);
assign outRegisterFile[25] = WriteAddressDecoded[25] ? (WriteValue) : (RegisterFile[25]);
assign outRegisterFile[26] = WriteAddressDecoded[26] ? (WriteValue) : (RegisterFile[26]);
assign outRegisterFile[27] = WriteAddressDecoded[27] ? (WriteValue) : (RegisterFile[27]);
assign outRegisterFile[28] = WriteAddressDecoded[28] ? (WriteValue) : (RegisterFile[28]);
assign outRegisterFile[29] = WriteAddressDecoded[29] ? (WriteValue) : (RegisterFile[29]);
assign outRegisterFile[30] = WriteAddressDecoded[30] ? (WriteValue) : (RegisterFile[30]);
assign outRegisterFile[31] = WriteAddressDecoded[31] ? (WriteValue) : (RegisterFile[31]);
assign outRegisterFile[32] = WriteAddressDecoded[32] ? (WriteValue) : (RegisterFile[32]);

assign RegisterFile[1] = mode ? (outRegisterFile[1]) : (RegisterFile[1]);
assign RegisterFile[2] = mode ? (outRegisterFile[2]) : (RegisterFile[2]);
assign RegisterFile[3] = mode ? (outRegisterFile[3]) : (RegisterFile[3]);
assign RegisterFile[4] = mode ? (outRegisterFile[4]) : (RegisterFile[4]);
assign RegisterFile[5] = mode ? (outRegisterFile[5]) : (RegisterFile[5]);
assign RegisterFile[6] = mode ? (outRegisterFile[6]) : (RegisterFile[6]);
assign RegisterFile[7] = mode ? (outRegisterFile[7]) : (RegisterFile[7]);
assign RegisterFile[8] = mode ? (outRegisterFile[8]) : (RegisterFile[8]);
assign RegisterFile[9] = mode ? (outRegisterFile[9]) : (RegisterFile[9]);
assign RegisterFile[10] = mode ? (outRegisterFile[10]) : (RegisterFile[10]);
assign RegisterFile[11] = mode ? (outRegisterFile[11]) : (RegisterFile[11]);
assign RegisterFile[12] = mode ? (outRegisterFile[12]) : (RegisterFile[12]);
assign RegisterFile[13] = mode ? (outRegisterFile[13]) : (RegisterFile[13]);
assign RegisterFile[14] = mode ? (outRegisterFile[14]) : (RegisterFile[14]);
assign RegisterFile[15] = mode ? (outRegisterFile[15]) : (RegisterFile[15]);
assign RegisterFile[16] = mode ? (outRegisterFile[16]) : (RegisterFile[16]);
assign RegisterFile[17] = mode ? (outRegisterFile[17]) : (RegisterFile[17]);
assign RegisterFile[18] = mode ? (outRegisterFile[18]) : (RegisterFile[18]);
assign RegisterFile[19] = mode ? (outRegisterFile[19]) : (RegisterFile[19]);
assign RegisterFile[20] = mode ? (outRegisterFile[20]) : (RegisterFile[20]);
assign RegisterFile[21] = mode ? (outRegisterFile[21]) : (RegisterFile[21]);
assign RegisterFile[22] = mode ? (outRegisterFile[22]) : (RegisterFile[22]);
assign RegisterFile[23] = mode ? (outRegisterFile[23]) : (RegisterFile[23]);
assign RegisterFile[24] = mode ? (outRegisterFile[24]) : (RegisterFile[24]);
assign RegisterFile[25] = mode ? (outRegisterFile[25]) : (RegisterFile[25]);
assign RegisterFile[26] = mode ? (outRegisterFile[26]) : (RegisterFile[26]);
assign RegisterFile[27] = mode ? (outRegisterFile[27]) : (RegisterFile[27]);
assign RegisterFile[28] = mode ? (outRegisterFile[28]) : (RegisterFile[28]);
assign RegisterFile[29] = mode ? (outRegisterFile[29]) : (RegisterFile[29]);
assign RegisterFile[30] = mode ? (outRegisterFile[30]) : (RegisterFile[30]);
assign RegisterFile[31] = mode ? (outRegisterFile[31]) : (RegisterFile[31]);
assign RegisterFile[32] = mode ? (outRegisterFile[32]) : (RegisterFile[32]);

// Read 
wire [32:1] ReadAddressDecoded1;
wire [32:1] ReadValueTemp1;
Decoder_5Bit readdecoder1 (ReadAddress1, ReadAddressDecoded1);
assign ReadValueTemp1 =  (ReadAddressDecoded1[1] ? (RegisterFile[1]) :
                    (ReadAddressDecoded1[2] ? (RegisterFile[2]) :
                    (ReadAddressDecoded1[3] ? (RegisterFile[3]) :
                    (ReadAddressDecoded1[4] ? (RegisterFile[4]) :
                    (ReadAddressDecoded1[5] ? (RegisterFile[5]) :
                    (ReadAddressDecoded1[6] ? (RegisterFile[6]) :
                    (ReadAddressDecoded1[7] ? (RegisterFile[7]) :
                    (ReadAddressDecoded1[8] ? (RegisterFile[8]) :
                    (ReadAddressDecoded1[9] ? (RegisterFile[9]) :
                    (ReadAddressDecoded1[10] ? (RegisterFile[10]) :
                    (ReadAddressDecoded1[11] ? (RegisterFile[11]) :
                    (ReadAddressDecoded1[12] ? (RegisterFile[12]) :
                    (ReadAddressDecoded1[13] ? (RegisterFile[13]) :
                    (ReadAddressDecoded1[14] ? (RegisterFile[14]) :
                    (ReadAddressDecoded1[15] ? (RegisterFile[15]) :
                    (ReadAddressDecoded1[16] ? (RegisterFile[16]) :
                    (ReadAddressDecoded1[17] ? (RegisterFile[17]) :
                    (ReadAddressDecoded1[18] ? (RegisterFile[18]) :
                    (ReadAddressDecoded1[19] ? (RegisterFile[19]) :
                    (ReadAddressDecoded1[20] ? (RegisterFile[20]) :
                    (ReadAddressDecoded1[21] ? (RegisterFile[21]) :
                    (ReadAddressDecoded1[22] ? (RegisterFile[22]) :
                    (ReadAddressDecoded1[23] ? (RegisterFile[23]) :
                    (ReadAddressDecoded1[24] ? (RegisterFile[24]) :
                    (ReadAddressDecoded1[25] ? (RegisterFile[25]) :
                    (ReadAddressDecoded1[26] ? (RegisterFile[26]) :
                    (ReadAddressDecoded1[27] ? (RegisterFile[27]) :
                    (ReadAddressDecoded1[28] ? (RegisterFile[28]) :
                    (ReadAddressDecoded1[29] ? (RegisterFile[29]) :
                    (ReadAddressDecoded1[30] ? (RegisterFile[30]) :
                    (ReadAddressDecoded1[31] ? (RegisterFile[31]) :
                    (ReadAddressDecoded1[32] ? (RegisterFile[32]) : (32'b00000000000000000000000000000000)
                    ))))))))))))))))))))))))))))))));


assign ReadValue1 = mode ? ReadValue1 : (ReadValueTemp1);

endmodule