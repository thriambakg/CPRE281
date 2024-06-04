module bcdconvert(c0,s3,s2,s1,s0,n2x0,n2x1,n2x2,n2x3,n1x0,n1x1,n1x2,n1x3);
input c0,s1,s2,s3,s0;
output n2x0,n2x1,n2x2,n2x3,n1x0,n1x1,n1x2,n1x3;
assign n2x3=0;
assign n2x2=0;
assign n2x1 = ((c0 && s2)||(c0 && s3));
assign n2x0 = ((~c0 && s3 && s2) || (~c0 && s3 && s1) || (s3 && s2 && s1) || (~c0 && ~s3 && ~s2));
assign n1x3 = ((s3 && ~s2 && ~s1) ||  (c0 && ~s3 && ~s2 && s1));
assign n1x2 = ~c0 && ~s3 && s2 || ~c0 && s2 && s1 || c0 && s3 && ~s2 || c0 && ~s2 && ~s1;
assign n1x1 = ~c0 && (~s3 && ~s1) || (s3 && s2 && ~s1) || c0 && (~s3 && ~s2 && ~s1) || (s3 && ~s2 && s1) || (~s3 && s2 && s1);
assign n1x0 = s0;
endmodule


