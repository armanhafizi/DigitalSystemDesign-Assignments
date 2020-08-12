module gcd( x, y, out);

	input [7:0] x, y;
	output reg [7:0] out;
	localparam s0 = 2'b00,  s1 = 2'b01, s2 = 2'b10;

	reg [1:0] state = s0;
	reg [7:0] a, b;

	always @(*)
	begin
		a = x;
		b = y;
		state = s1;
		while( state != s2)
		begin
			if(a == b)
			begin
				state = s2;
				out = a;
			end
			else if(a > b)
			begin
				state = s1;
				a = a - b;
			end
			else
			begin
				state = s1;
				b = b - a;
			end
		end
	end
endmodule