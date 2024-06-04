module mux4to1(w3,w2,w1,w0,s,O);
input w3,w2,w1,w0;
input [1:0]s;
output reg O;
always @(s or w3 or w2 or w1 or w0)
case (s)
0:O= w0;
1:O=w1;
2:O=w2;
3:O=w3;
endcase
endmodule
