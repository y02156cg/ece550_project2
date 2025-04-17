module RCA(
	input [15:0]in1,
	input [15:0]in2,
	input cin,
	output[15:0]sum,
	output cout
);

	wire c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15;
	
	full_adder fa0(
		.a(in1[0]),
		.b(in2[0]),
		.cin(cin),
		.sum(sum[0]),
		.cout(c1)
	);
	
	full_adder fa1(
		.a(in1[1]),
		.b(in2[1]),
		.cin(c1),
		.sum(sum[1]),
		.cout(c2)
	);
	
	full_adder fa2(
		.a(in1[2]),
		.b(in2[2]),
		.cin(c2),
		.sum(sum[2]),
		.cout(c3)
	);
	
	full_adder fa3(
		.a(in1[3]),
		.b(in2[3]),
		.cin(c3),
		.sum(sum[3]),
		.cout(c4)
	);
	
	full_adder fa4(
		.a(in1[4]),
		.b(in2[4]),
		.cin(c4),
		.sum(sum[4]),
		.cout(c5)
	);
	
	full_adder fa5(
		.a(in1[5]),
		.b(in2[5]),
		.cin(c5),
		.sum(sum[5]),
		.cout(c6)
	);
	
	full_adder fa6(
		.a(in1[6]),
		.b(in2[6]),
		.cin(c6),
		.sum(sum[6]),
		.cout(c7)
	);
	
	full_adder fa7(
		.a(in1[7]),
		.b(in2[7]),
		.cin(c7),
		.sum(sum[7]),
		.cout(c8)
	);
	
	full_adder fa8(
		.a(in1[8]),
		.b(in2[8]),
		.cin(c8),
		.sum(sum[8]),
		.cout(c9)
	);
	
	full_adder fa9(
		.a(in1[9]),
		.b(in2[9]),
		.cin(c9),
		.sum(sum[9]),
		.cout(c10)
	);
	
	full_adder fa10(
		.a(in1[10]),
		.b(in2[10]),
		.cin(c10),
		.sum(sum[10]),
		.cout(c11)
	);
	
	full_adder fa11(
		.a(in1[11]),
		.b(in2[11]),
		.cin(c11),
		.sum(sum[11]),
		.cout(c12)
	);
	
	full_adder fa12(
		.a(in1[12]),
		.b(in2[12]),
		.cin(c12),
		.sum(sum[12]),
		.cout(c13)
	);
	
	full_adder fa13(
		.a(in1[13]),
		.b(in2[13]),
		.cin(c13),
		.sum(sum[13]),
		.cout(c14)
	);
	
	full_adder fa14(
		.a(in1[14]),
		.b(in2[14]),
		.cin(c14),
		.sum(sum[14]),
		.cout(c15)
	);
	
	full_adder fa15(
		.a(in1[15]),
		.b(in2[15]),
		.cin(c15),
		.sum(sum[15]),
		.cout(cout)
	);
	

endmodule