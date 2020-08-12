`timescale 1ns/1ns
module testbench; // run this tb at least for 320 ns
	
	reg	clk, rst, in;
	wire	out;
	reg [15:0] inp = 16'b0001000010010000;

	Detector inst_1( .Clk(clk), .Rst(rst), .In(in), .Out(out));
	
	initial begin
		clk = 1'b1; // 1
		rst = 1'b1; // 1
		#15 rst = 1'b0; // 0
	end
	always begin
		#10 clk = ~clk;
	end
	always begin
		#20 in = inp[0];
		inp = inp >> 1;
	end
endmodule