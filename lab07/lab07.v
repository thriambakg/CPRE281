module FA(Cin,x,y,s,Cout);
input Cin,x,y;
output Cout,s;
assign s = (x+y+Cin);
assign Cout = (x*y + y*Cin+x*Cin);
endmodule
	