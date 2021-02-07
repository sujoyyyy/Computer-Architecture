module main_memory(clk,address,data_out);
    input [31:0] address;
    input clk;
    output [511:0] data_out;
    reg [511:0] data_out;
    reg [31:0] intialAddress;
    integer i;
    integer p;
    integer q;

    always@(posedge clk)
    begin
        intialAddress = {address[31:4],{4'b0000}};
        q=31;
        for(i=0;i<16;i=i+1) 
        begin
            data_out[q-:32] = intialAddress;
            q = q+32;        
            intialAddress = intialAddress+1;
            
        end
    end
endmodule