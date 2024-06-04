module FullAdder_m (S,Cout,A,B,Cin);
input A,B,Cin;
output Cout,S;
assign S = A ^ B ^ Cin;
assign Cout = (A & B)  |  (A & Cin)  |  (B & Cin);
endmodule
