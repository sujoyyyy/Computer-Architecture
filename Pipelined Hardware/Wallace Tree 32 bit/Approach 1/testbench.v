`include "wtm.v"
module top;
reg [31:0]a,b;
reg clk;
wire cout;
wire [63:0]s;

wallace out(a,b,s,cout,clk);

initial
clk=1'b0;

initial
begin

#0
a=32'b00000000000000000000000000000011;
b=32'b00000000000000000000000000000011;


#30 $finish;
end

always
#2 clk=~clk;

initial
$monitor($time,"clock=%b,a=%b,b=%b,s=%b,cout=%b",clk,a,b,s,cout);
endmodule