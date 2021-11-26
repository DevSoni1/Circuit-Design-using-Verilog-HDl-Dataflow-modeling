module HA(
	output sum,carry,
	input a,b);
assign sum = a+b,
	carry = a&b;
endmodule 
