module unknown(clk_in, reset, clk_out);
input clk_in, reset;
output clk_out;
reg [1: 0] poss , negg;
always @(posedge clk_in)
if (reset)
begin
poss = 0; // <================= THIS
end
else
begin
poss = (poss ==2)? 0 : poss +1; // <================= THIS
end
always @(negedge clk_in)
if (reset)
begin
negg <= 0;
end
else
begin
negg <= (negg ==2)? 0 : negg +1;
end
assign clk_out = ((poss != 2)&&(negg !=2));
endmodule