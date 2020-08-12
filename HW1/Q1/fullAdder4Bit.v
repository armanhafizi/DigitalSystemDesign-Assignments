module fullAdder4Bit(x, y, M, r, co);

	input [3:0] x, y;
	input M;
	output [3:0]r;
	output co;

	wire [6:0]w;
	xor (w[0], y[0], M);
	xor (w[1], y[1], M);
	xor (w[2], y[2], M);
	xor (w[3], y[3], M);

	fullAdder1Bit FA1b_1( .A(x[0]), .B(w[0]), .cin(M   ), .S(r[0]), .cout(w[4]) );
	fullAdder1Bit FA1b_2( .A(x[1]), .B(w[1]), .cin(w[4]), .S(r[1]), .cout(w[5]) );
	fullAdder1Bit FA1b_3( .A(x[2]), .B(w[2]), .cin(w[5]), .S(r[2]), .cout(w[6]) );
	fullAdder1Bit FA1b_4( .A(x[3]), .B(w[3]), .cin(w[6]), .S(r[3]), .cout(co)   );

endmodule