module mux2to1( inp0, inp1, sel, out);

	input inp0, inp1, sel;
	output out;

	wire [2:0] w;
	not not_1(w[0], sel);
	nand (w[1], inp0, w[0]);
	nand (w[2], sel, inp1);
	nand (out, w[1], w[2]);

endmodule