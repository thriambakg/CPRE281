module farmerlab4(g,w,c,f,a);

input g,w,f,c;
output a;
reg a;

always@(g or w or f or c)
begin
	case({g,w,c,f})
	
	4'b0000: a = 'b0;
	4'b0001: a = 'b0;
	4'b0010: a = 'b0;
	4'b0100: a = 'b0;
	4'b1000: a = 'b0;
	4'b0011: a = 'b0;
	4'b0110: a = 'b0;
	4'b1100: a = 'b1;
	4'b1010: a = 'b1;
	4'b0101: a = 'b0;
	4'b1001: a = 'b0;
	4'b0110: a = 'b0;
	4'b1110: a = 'b1;
	4'b0111: a = 'b0;
	4'b1101: a = 'b0;
	4'b1011: a = 'b0;
	4'b1111: a = 'b0;
	
endcase
end
endmodule
