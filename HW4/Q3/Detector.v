module Detector( Clk, Rst, In, Out);

	input Clk, Rst, In;
	output wire Out;

	localparam s0 = 2'b00,  s1 = 2'b01, s2 = 2'b10, s3 = 2'b11;
	parameter numOfStates = 2;

	reg [numOfStates - 1: 0] state;

	always @(posedge Clk)
	begin
		if(Rst)
			state <= s0;
		else
		begin
			case(state)
			s0:
			begin
				if(In)
					state <= s1;
				else
					state <= s0;
			end
			s1:
			begin
				if(In)
					state <= s2;
				else
					state <= s1;
			end
			s2:
			begin
				if(In)
					state <= s3;
				else
					state <= s2;
			end
			s3:
			begin
				if(In)
					state <= s3;
				else
					state <= s3;
			end
			endcase
		end
	end
	assign Out = (state == s3);
endmodule