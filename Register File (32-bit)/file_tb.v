`include "file.v"
module test;

reg reset;
reg mode; // mode = 0 - Read Mode | mode = 1 - Write Mode

reg [5:1] WriteAddress;
reg [32:1] WriteValue;

reg [5:1] ReadAddress1, ReadAddress2;
wire [32:1] ReadValue1, ReadValue2;
RegisterFile_16Bit_32Size_WithoutDFFs rf (mode, WriteAddress, WriteValue, ReadAddress1, ReadAddress2, ReadValue1, ReadValue2);


initial begin
    $monitor($time, ": Read1: %b = %b (%d), Read2: %b = %b (%d)", 
        ReadAddress1, ReadValue1, ReadValue1, 
        ReadAddress2, ReadValue2, ReadValue2
    );
end

initial begin
    WriteAddress = 5'b00000;
    WriteValue = 32'b001001000110010001001000110010;
    mode = 1'b1;
    #10
    mode = 1'b0; ReadAddress1 = 5'b00000; ReadAddress2 = 5'b00001;
    #10
    WriteAddress = 5'b00001; WriteValue = 32'b0001001001100011001001000110010; 
    #1 mode = 1'b1;
    #10
    mode = 1'b0; ReadAddress1 = 5'b00000; ReadAddress2 = 5'b00001;
    #10
    WriteAddress = 5'b00010; WriteValue = 32'b1010000001101011001001000110010; 
    #1 mode = 1'b1;
    #10
    mode = 1'b0; ReadAddress1 = 5'b00001; ReadAddress2 = 5'b00010;
    #100 $finish;
end

endmodule