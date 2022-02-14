module mix1 (a, b, sel, y);
input  logic a, b, sel;
output logic y;
always_comb
begin
	if( sel == 0)
		y = b;
	else
		y = a;
end
endmodule
