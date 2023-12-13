// 2 bit half adder

module halfadder_02(
	input A,B,
	output SUM, C_OUT
	);

	assign SUM = A ^ B;
	assign C_OUT = A & B;

endmodule
