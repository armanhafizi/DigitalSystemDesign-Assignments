`timescale 1ns/1ns
module newCircuit(A, B, C, F);

	input A, B, C;
	output F;

	wire D, E, W, G, H;
	not not_1(W, B);
	and #5  ( D, A, W);
	and #10 ( E, C, B);
	and #15 ( G, A, C);
	or( H, D, E);
	or( F, G, H);
endmodule