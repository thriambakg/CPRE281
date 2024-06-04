module farmer_problem(c,w,g,a);
	input c,w,g;
	output a;
	
	
	
	
	
	and(check1,w,g);
	and(check2,c,g);
	or (a,check1,check2);
	
	
endmodule;
