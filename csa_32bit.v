module csa_32bit(data_operandA, data_operandB, data_result, overflow, cin);

   input [31:0] data_operandA, data_operandB;
	input cin;

   output [31:0] data_result;
   output overflow;

   // YOUR CODE HERE //
	
	wire cout_upper, cout_lower0, cout_lower1;
	wire [15:0] lower_result0, lower_result1, upper_result;
	wire axorb, axorbn, overflow_result;
	
	RCA RCA_upper(
		.in1(data_operandA[15:0]),
		.in2(data_operandB[15:0]),
		.cin(cin),
		.sum(upper_result),
		.cout(cout_upper)
	);
	
	RCA RCA_lower0(
		.in1(data_operandA[31:16]),
		.in2(data_operandB[31:16]),
		.cin(0),
		.sum(lower_result0),
		.cout(cout_lower0)
	);
	
	RCA RCA_lower1(
		.in1(data_operandA[31:16]),
		.in2(data_operandB[31:16]),
		.cin(1),
		.sum(lower_result1),
		.cout(cout_lower1)
	);

	mux mux_lower(
		.in0(lower_result0),
		.in1(lower_result1),
		.sel(cout_upper),
		.out(data_result[31:16])
	);

	assign data_result[15:0] = upper_result;

	//judge if overflow happens
	xor xor_ab(axorb, data_operandA[31], data_operandB[31]);
	not not_axorb(axorbn, axorb);
	xor xor_asum(axorsum, data_operandA[31], data_result[31]);
	and and_gate(overflow_result, axorsum, axorbn);

	assign overflow = overflow_result;
	
	

endmodule