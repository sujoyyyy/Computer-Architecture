module dcache (
	input [16:0] raddr,
	input [16:0] waddr,
	input [31:0] wdata,
	input ren,
	input wen,
	input clk,
	output reg [31:0] rdata
);
	reg [31:0] mm [8191:0][15:0];
	reg [31:0] cache [1023:0][15:0];
	reg [2:0] tags [1023:0];
	reg val [1023:0];	
	reg dirty [1023:0];	

	//Reading Information
	wire [2:0] read_tag;
	wire [9:0] read_line; 
	wire [3:0] read_offset;

	//Writing Information
	wire [2:0] write_tag;
	wire [9:0] write_line; 
	wire [3:0] write_offset;

	integer i, j;
	assign read_tag = raddr[16:14];
	assign read_line = raddr[13:4];
	assign read_offset = raddr[3:0];

	assign write_tag = waddr[16:14];
	assign write_line = waddr[13:4];
	assign write_offset = waddr[3:0];

	initial 
	begin
		for (i = 0; i < 8192; i = i + 1) 
		begin
			for (j = 0; j < 16; j = j + 1) 
			begin
				mm[i][j] = 0;
			end
		end
		
		// Initial Invalid Tags
		for (i = 0; i < 1024; i = i + 1) 
		begin
			val[i] = 0;
			dirty[i] = 0;
		end
	end
	
	always @(posedge clk) 
	begin
		if (ren) 
		begin

			if (tags[read_line] == read_tag && val[read_line] == 1'b1) 
			begin
				$monitor("%d Cache Hit : Reading Value.", $time);
				rdata = cache[read_line][read_offset];
			end 

			else 
			begin
				$display("%d Could not read. Miss", $time);
				// check if line is DIRTY
				if (dirty[write_line] == 1'b1) 
				begin
					// write cache line to memory block (cache line is modified)
					$display("%d Encountered a dirty line.", $time);
					for(i=0; i < 16; i = i+1)
					begin
						mm[{tags[read_line], read_line}][i] = cache[read_line][i];
					end
					dirty[read_line] = 1'b0;
				end

				else 
				begin
					// bring correct block to cache
					$display("%d Line is not dirty, storing in cache...", $time);
					for(i=0; i < 16; i = i+1)
					begin
						cache[read_line][i] = mm[{read_tag, read_line}][i];
					end	
					val[read_line] = 1'b1;
					tags[read_line] = read_tag;
				end
			end
		end

		if (wen) 
		begin
			// check if block is in cache and is val
			if (tags[write_line] == write_tag && val[write_line] == 1'b1) 
			begin
				$display("%d Cache Hit : Writing Value.", $time);
				cache[write_line][write_offset] = wdata;
				dirty[write_line] = 1'b1;
			end

			// replace with correct line 
			else 
			begin
				$display("%d Could not write. Miss", $time);
				// check if line is dirty
				if (dirty[write_line] == 1'b1) 
				begin
					// write cache line to memory block
					$display("%d # Encountered a dirty line.", $time);
					for(i=0; i < 16; i = i+1)
					begin
						mm[{tags[write_line], write_line}][i] = cache[write_line][i];
					end	
					dirty[write_line] = 1'b0;
				end
				
				else 
				begin
					// bring correct block to cache
					$display("%d Line is not dirty, storing in cache...", $time);
					for(i=0; i < 16; i = i+1)
					begin
						cache[write_line][i] = mm[{write_tag, write_line}][i];
					end				
					val[write_line] = 1'b1;
					tags[write_line] = write_tag;
				end
			end
		end
	end

endmodule