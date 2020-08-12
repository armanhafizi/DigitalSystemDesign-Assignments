module mux3to1( i, s , o);

	input [2:0] i;
	input [1:0] s;
	output o;

	wire [1:0]w;
	not not_1(w[1], s[0]);

	mux2to1 mux2to1_1( .inp0(i[0]), .inp1(i[2]), .sel(s[1]), .out(w[0]) );
	mux2to1 mux2to1_2( .inp0(i[1]), .inp1(w[0]), .sel(w[1]), .out(o)    );

endmodule 