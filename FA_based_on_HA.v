module FA(
	output sum,cout,
	input a,b,cin);
wire s1,c1,c2;
HA ha0(s1,c1,a,b);
HA ha1(sum,c2,s1,cin);
assign cout = c2 + c1;
endmodule
