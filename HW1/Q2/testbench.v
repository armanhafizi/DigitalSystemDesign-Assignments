`timescale 1ns/1ns
module testbench;
	reg [2:0]inp;
	reg [1:0]sel;
	wire out;

	mux3to1 mux3to1_1( .i(inp), .s(sel), .o(out) );

	initial begin
		inp = 3'b101;
		sel = 2'b00;
		#10 sel = 2'b01;
		#10 sel = 2'b10;
		#10 sel = 2'b11;
	end
endmodule 