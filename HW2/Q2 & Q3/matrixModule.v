module matrixModule( OP, A11, A12, A21, A22, B11, B12, B21, B22, C11, C12, C21, C22);

	input OP;
	input [7:0] A11, A12, A21, A22, B11, B12, B21, B22;
	output  reg [15:0] C11, C12, C21, C22;

	wire [15:0] temp[11:0];

	mul_add inst1( .OP(OP), .A(A11), .B(B11), .result(temp[0]) );
	mul_add inst2( .OP(OP), .A(A12), .B(B21), .result(temp[1]) );
	mul_add inst3( .OP(OP), .A(A11), .B(B12), .result(temp[2]) );
	mul_add inst4( .OP(OP), .A(A12), .B(B22), .result(temp[3]) );
	mul_add inst5( .OP(OP), .A(A21), .B(B11), .result(temp[4]) );
	mul_add inst6( .OP(OP), .A(A22), .B(B21), .result(temp[5]) );
	mul_add inst7( .OP(OP), .A(A21), .B(B12), .result(temp[6]) );
	mul_add inst8( .OP(OP), .A(A22), .B(B22), .result(temp[7]) );

	mul_add inst9 ( .OP(OP), .A(A11), .B(B11), .result(temp[8 ]) );
	mul_add inst10( .OP(OP), .A(A12), .B(B12), .result(temp[9 ]) );
	mul_add inst11( .OP(OP), .A(A21), .B(B21), .result(temp[10]) );
	mul_add inst12( .OP(OP), .A(A22), .B(B22), .result(temp[11]) );

	always @(OP or A11 or A12 or A21 or A22 or B11 or B12 or B21 or B22)
	begin
		if(OP == 0)
		begin
			assign C11 = temp[8];
			assign C12 = temp[9];
			assign C21 = temp[10];
			assign C22 = temp[11];
		end
		else
		begin
			assign C11 = temp[0] + temp[1];
			assign C12 = temp[2] + temp[3];
			assign C21 = temp[4] + temp[5];
			assign C22 = temp[6] + temp[7];
		end
	end
endmodule