`timescale 1ns/1ns
module testbench; // run this tb at least for 320 ns
	
	reg [7:0] x,y;
	wire [7:0] out;

	gcd inst_1( .x(x), .y(y), .out(out));
	
	initial begin
		x = 8'b01101000; // 8 * 13 = 104
		y = 8'b01000001; // 5 * 13 = 65
		#20 x = 8'b01101001 ; // 5 * 21 = 105
	end
endmodule