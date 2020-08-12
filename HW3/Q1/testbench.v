`timescale 1ns/1ns
module testbench;
	
	reg	clk_in, rst;
	wire	clk_out;

	unknown inst_1(clk_in, rst, clk_out);
	
	initial begin
		clk_in = 1'b1; // 1
		rst = 1'b0; // 0
		#20  rst = 1'b1; // 1
		#40 rst = 1'b0; // 0
	end
	always begin
		#10 clk_in = ~clk_in;
	end
endmodule