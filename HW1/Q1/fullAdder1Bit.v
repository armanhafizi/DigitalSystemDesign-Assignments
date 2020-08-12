module fullAdder1Bit(A, B, cin, S, cout);

	input A, B, cin;
	output S, cout;

	wire  [2:0]W;
	xor (W[0],A,B);
	xor (S,W[0],cin);
	and(W[1],W[0],cin);
	and(W[2],A,B);
	or(cout,W[1],W[2]); 

endmodule