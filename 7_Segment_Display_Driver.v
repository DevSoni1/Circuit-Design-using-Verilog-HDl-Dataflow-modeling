module SevenSegDriver(
	output [6:0] out,
	input a,b,c,d);

assign out[6] = (~a & ~c & ~d) | (b & ~c & ~d) | (a & c & ~d) | (~b & ~c & d);
assign out[5] = (~c & ~d) | (~a & ~b & ~d) | (a & b & ~d) | (~b & ~c & d);
assign out[4] = (~b & ~d) | (a & ~d) | (~c & ~b) | (c & ~d);
assign out[3] = (~a & ~c & ~b) | (b & ~c & ~d) | (~a & b & ~d) | (a & ~b & c & ~d);
assign out[2] = (~a & ~c & ~b) | (~a & b & ~d);
assign out[1] = (~a & ~b & ~d) | (~b & c & ~d) | (~a & c & ~d) | (~b & ~c & d);
assign out[0] = (b & ~c & ~d) | (~b & c & ~d) | (~b & ~c & d) | (~a & b & ~d);
endmodule
