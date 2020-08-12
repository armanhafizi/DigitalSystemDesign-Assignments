module mul_add(OP, A, B, result);
	input OP;
	input   [7:0] A, B;
	output  [15:0] result;

	wire     [3:0] rea[0:1];
	wire     [3:0] img[0:1];
	reg	[7:0] r,i;

	assign {rea[0], img[0]} = A;
	assign {rea[1], img[1]} = B;

	always @(OP or A or B)
	begin
		if(OP == 0)
		begin
			assign r = rea[0] + rea[1];
			assign i = img[0] + img [1];
		end
		else
		begin
			assign r = rea[0] * rea [1] - img[0] * img[1];
			assign i = rea[0] * img [1] + rea[1] * img[0];
		end
	end
	assign result = {r, i};
endmodule