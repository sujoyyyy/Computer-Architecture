`include "Floating_adder.v"
module testbench();
	reg [31:0] a;
	reg [31:0] b;
	reg enable;
	wire [31:0] ans;
	Floating_adder h1(a,b,enable,ans);

	initial
	begin
		a = 32'b01000000110000000000000000000000;      //floating point rep of 6
		b = 32'b11000001010000000000000000000000;	   //floating point rep of 12
		enable = 1'd1;
	end

	initial $display("a =%b\nb =%b\n",h1.a,h1.b);
	initial $monitor("s =%b",ans);
endmodule