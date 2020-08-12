`timescale 1ns/1ns
module testbench;
	
	reg	[3:0] A,B;
	reg	ctrl;
	wire	[3:0]res;
	wire	cout;

	fullAdder4Bit FA4b_1(.x(A), .y(B), .M(ctrl), .r(res), .co(cout));
	
	initial begin
		B <= 4'b0101; // 5
		A <= 4'b1100; // 12
		ctrl <= 1; // subtraction
		#10 B <= 4'b0111; // 7
		A <= 4'b0100; // 4
		ctrl <= 0; // addition
	end

endmodule
