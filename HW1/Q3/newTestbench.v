`timescale 1ns/1ns
module newTestbench;
	
	reg	A,B,C;
	wire	F;

	newCircuit nc_1(.A(A), .B(B), .C(C), .F(F));
	
	initial begin
		A <= 1;
		B <= 0;
		C <= 1;
		#10 B <= 1;
	end

endmodule