module seven_seg_decoder(x3,x2,x1,x0,out);
input x3,x2,x1,x0;
output reg [6:0] out;

always@(x3 or x2 or x1 or x0)
begin
	case({x3,x2,x1,x0})
	4'b0000:out = 7'b0000001;
	4'b0001:out = 7'b1001111;
	4'b0010:out = 7'b0010010;
	4'b0011:out = 7'b0000110;
	4'b0100:out = 7'b1001100;
	4'b0101:out = 7'b0100100;
	4'b0110:out = 7'b0100000;
	4'b0111:out = 7'b0001111;
	4'b1000:out = 7'b0000000;
	4'b1001:out = 7'b0001100;
	4'b1010:out = 7'b0001000;
	4'b1011:out = 7'b1100000;
	4'b1100:out = 7'b0110001;
	4'b1101:out = 7'b1000010;
	4'b1110:out = 7'b0110000;
	4'b1111:out = 7'b0111000;
	endcase
end
endmodule
