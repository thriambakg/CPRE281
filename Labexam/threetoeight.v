module Decoder3to8 (en,w2,w1,w0,y0,y1,y2,y3,y4,y5,y6,y7);
input en,w2,w1,w0;
output reg y0,y1,y2,y3,y4,y5,y6,y7;
always @ (en,w2,w1,w0)
begin
y0=0;
y1=0;
y2=0;
y3=0;
y4=0;
y5=0;
y6=0;
y7=0;

if (en == 1'b1)
begin
case({w2,w1,w0})
3'b000: y0 = 1;
3'b001: y1 = 1;
3'b010: y2 = 1;
3'b011: y3 = 1;
3'b100: y4 = 1;
3'b101: y5 = 1;
3'b110: y6 = 1;
3'b111: y7 = 1;
endcase
end
end
endmodule
