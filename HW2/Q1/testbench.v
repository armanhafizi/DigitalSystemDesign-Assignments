`timescale 1ns/1ns
module testbench;
	
	reg	OP;
	reg	[7:0] A, B;
	wire	[15:0] result;

	mul_add mul_add_1(.OP(OP), .A(A), .B(B), .result(result) );
	
	initial begin
		OP = 1'b0; // 0, add
		A = 8'b10000111; // 8 + 7i
		B = 8'b00110100; // 3 + 4i
		#15 OP = 1'b1; // 1, mul
	end
endmodule