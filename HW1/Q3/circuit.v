`timescale 1ns/1ns
module circuit(A, B, C, F);

	input A, B, C;
	output F;

	wire D, E, W;
	not not_1(W, B);
	and #5 ( D, A, W);
	and #10( E, C, B);
	or( F, D, E);
endmodule