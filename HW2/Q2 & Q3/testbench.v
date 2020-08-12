`timescale 1ns/1ns
module testbench;
	
	reg	OP;
	reg	[7:0] A11, A12, A21, A22, B11, B12, B21, B22;
	wire	[15:0] C11, C12, C21, C22;

	matrixModule matrixModule_1(.OP(OP), .A11(A11), .A12(A12), .A21(A21), .A22(A22), .B11(B11), .B12(B12), .B21(B21), .B22(B22), .C11(C11), .C12(C12), .C21(C21), .C22(C22) );
	
	initial begin
		OP = 1'b0; // 0, add
		A11 = 8'b10000111; // 8 + 7i
		A12 = 8'b00010010; // 1 + 2i
		A21 = 8'b01000011; // 4 + 3i
		A22 = 8'b00000001; // i
		B11 = 8'b00110000; // 3
		B12 = 8'b01110101; // 7 + 5i
		B21 = 8'b01000100; // 4 + 4i
		B22 = 8'b00010110; // 1 + 6i
		#15 OP = 1'b1; // 1, mul
	end
endmodule