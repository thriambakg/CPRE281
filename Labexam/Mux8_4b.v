module Mux8_4b(s2, s1, s0, w0, w1, w2, w3, w4, w5, w6, w7, F);
input s2, s1, s0;
input [3:0] w0;
input [3:0] w1;
input [3:0] w2;
input [3:0] w3;
input [3:0] w4;
input [3:0] w5;
input [3:0] w6;
input [3:0] w7;
output reg [3:0] F;
always@(w0 or w1 or w2 or w3 or w4 or w5 or w6 or w7)
begin
case({s2,s1,s0})
3'b000: F = w0;
3'b001: F = w1;
3'b010: F = w2;
3'b011: F = w3;
3'b100: F = w4;
3'b101: F = w5;
3'b110: F = w6;
3'b111: F = w7;
endcase
end 
endmodule

