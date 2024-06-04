module farmer_problem(c,w,g,a,f);
	input c,w,g,f;
	output a;
	
	
	
	
	
	and(check1,w,g,~f);
	and(check2,c,g,~f);
	or (a,check1,check2);
	
	
endmodule;
