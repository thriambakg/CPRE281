module farmer_problem(c,w,g,a);
	input c,w,g;
	output a;
	
	wire check1;
	wire check2;
	
	assign check1 = w&g;
	assign check2 = c&g;
	assign a = check1 | check2;
	
	
endmodule;
