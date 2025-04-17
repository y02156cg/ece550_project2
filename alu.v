module alu(data_operandA, data_operandB, ctrl_ALUopcode, ctrl_shiftamt, data_result, isNotEqual, isLessThan, overflow);

   input [31:0] data_operandA, data_operandB;
   input [4:0] ctrl_ALUopcode, ctrl_shiftamt;

   output [31:0] data_result;
   output isNotEqual, isLessThan, overflow;

   // YOUR CODE HERE //
	
	wire [31:0] tempB, not_B;
	wire [31:0] add_subResult, AND_result, OR_result, SLL_result, SRA_result;

	not_32bit notB(
		.B(data_operandB),
		.notB(not_B)
	);
	
	
	mux_32bit mux_B(
		.in0(data_operandB),
		.in1(not_B),
		.sel(ctrl_ALUopcode[0]),
		.out(tempB)
	);
	
	
	csa_32bit csa_adder(
		.data_operandA(data_operandA),
		.data_operandB(tempB),
		.cin(ctrl_ALUopcode[0]),
		.data_result(add_subResult),
		.overflow(overflow)
	);
	
	// Tell isLessThan & Equal //
	assign isLessThan = overflow ? data_operandA[31] : add_subResult[31];
	isnotequal equal_(.data_operand(add_subResult), .result(isNotEqual));

	// OR AND bitwise Operation //

	AND_bitwise and1(.data_operandA(data_operandA), .data_operandB(data_operandB), .result(AND_result));

	OR_bitwise or1(.data_operandA(data_operandA), .data_operandB(data_operandB), .result(OR_result));

   // SLL & SRA //
	SLL sll(.data_operand(data_operandA), .ctrl_shiftamt(ctrl_shiftamt), .result(SLL_result));

	SRA sra(.data_operand(data_operandA), .ctrl_shiftamt(ctrl_shiftamt), .result(SRA_result));


	assign data_result = ctrl_ALUopcode[2]? (ctrl_ALUopcode[0]? SRA_result:SLL_result) : (ctrl_ALUopcode[1]? (ctrl_ALUopcode[0]? OR_result: AND_result): add_subResult);


endmodule