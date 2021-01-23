`include "file.v"
module test;

reg reset;
reg mode; // mode = 0 - Read Mode | mode = 1 - Write Mode

reg [5:1] WriteAddress;
reg [32:1] WriteValue;
reg [5:1] ReadAddress1;
wire [32:1] ReadValue1;
RegisterFile_32Bit_32Size rf (mode, WriteAddress, WriteValue, ReadAddress1, ReadValue1);


initial begin
    $monitor($time, ": Read: %b = %b (%d)", 
        ReadAddress1, ReadValue1, ReadValue1
    );
end

initial begin
    WriteAddress = 5'b00000;
    WriteValue = 32'd0;
    mode = 1'b1;
    #10
    mode = 1'b0; ReadAddress1 = 5'b00000;
    #10
    WriteAddress = 5'b00001; WriteValue = 32'd12; 
    #1 
    mode = 1'b1;
    #10
    mode = 1'b0; ReadAddress1 = 5'b00001;
    #10
    WriteAddress = 5'b00010; WriteValue = 32'd24;
    #1 mode = 1'b1;
    #10
    mode = 1'b0; ReadAddress1 = 5'b00010; 
    #100 $finish;
end

endmodule