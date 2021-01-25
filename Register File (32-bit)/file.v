module registerFile (input wrEnable, input [4:0] wrReg, input [31:0] wrData, input [4:0] rdReg1, output [31:0] rdData1, input [4:0] rdReg2, output [31:0] rdData2, input clk);

	reg [31:0] regFile [31:0];
	assign rdData1 = regFile[rdReg1];
	assign rdData2 = regFile[rdReg2];
	always @(posedge clk) begin if (wrEnable) begin regFile[wrReg] <= wrData; end end

endmodule

module registerFile_tb();

	reg wrEnable;
	reg [4:0] wrReg;
	reg [31:0] wrData;
	reg [4:0] rdReg1;
	wire [31:0] rdData1;
	reg [4:0] rdReg2;
	wire [31:0] rdData2;
	reg clk;
	reg [5:0] index;

	always begin #5 clk = ~clk; end

	initial 
    begin
		clk = 0;
		wrEnable = 1;
		for (index = 0; index < 10; index = index + 1) begin #10 wrReg = index; wrData = index * 2; $display ("Write Address:%d Write Data:%d", wrReg, wrData); end
        $display("\n\nReading data\n");
		#10 rdReg1 = 0; rdReg2 = 1; #2 $display ("Read Address1:%d ReadData1:%d \tRead Address2:%d ReadData2:%d", rdReg1, rdData1, rdReg2, rdData2);
		#10 rdReg1 = 2; rdReg2 = 3; #2 $display ("Read Address1:%d ReadData1:%d \tRead Address2:%d ReadData2:%d", rdReg1, rdData1, rdReg2, rdData2);
		#10 rdReg1 = 4; rdReg2 = 5; #2 $display ("Read Address1:%d ReadData1:%d \tRead Address2:%d ReadData2:%d", rdReg1, rdData1, rdReg2, rdData2);
		#10 rdReg1 = 6; rdReg2 = 7; #2 $display ("Read Address1:%d ReadData1:%d \tRead Address2:%d ReadData2:%d", rdReg1, rdData1, rdReg2, rdData2);
		#10 rdReg1 = 8; rdReg2 = 9; #2 $display ("Read Address1:%d ReadData1:%d \tRead Address2:%d ReadData2:%d", rdReg1, rdData1, rdReg2, rdData2);

	end

	registerFile regFile1 (wrEnable, wrReg, wrData, rdReg1, rdData1, rdReg2, rdData2, clk);

endmodule