`include "cache.v"
module top ();
	reg [16:0] read_addr, write_addr; reg [31:0] write_data; reg clk; reg read_enable, write_enable; wire [31:0] read_data;
	dcache C1 (read_addr, write_addr, write_data, read_enable, write_enable, clk,read_data);

	initial begin
		clk = 0;
		forever begin
			#1 clk = ~clk;
		end
	end

	initial begin
		//Read Miss 
		#5 read_enable = 1'b1;
		read_addr = 17'b100_1110000000_1011;
		#5 read_enable = 1'b0;
		#5$display("%d %b -> %h", $time, read_addr, read_data);

		//Write Hit
		#5 write_enable = 1'b1;
		write_addr = 17'b100_1110000000_1011;
		write_data = 32'h11111fff;
		#5 write_enable = 1'b0;

		//Read Hit
		#5 read_enable = 1'b1;
		read_addr = 17'b100_1110000000_1011;
		#5 read_enable = 1'b0;
		#5 $display("%d %b -> %h", $time, read_addr, read_data);

		//Read Miss - (SAME LINE DIFFERENT TAG)
		#5 read_enable = 1'b1;
		read_addr = 17'b111_1110000000_1011;
		#5 read_enable = 1'b0;
		#5 $display("%d %b -> %h", $time, read_addr, read_data);

		//Read Miss
		#5 read_enable = 1'b1;
		read_addr = 17'b100_1110000000_1011;
		#5 read_enable = 1'b0;
		#5 $display("%d %b -> %h", $time, read_addr, read_data);
		
		//Write Miss
		#5 write_enable = 1'b1;
		write_addr = 17'b101_1110000000_1011;
		write_data = 32'haaaa1111;
		#5 write_enable = 1'b0;

		//Read Hit
		#5 read_enable = 1'b1;
		read_addr = 17'b101_1110000000_1011;
		#5 read_enable = 1'b0;
		#5 $display("%d %b -> %h", $time, read_addr, read_data);
		
		#100 $finish;
	end

endmodule
