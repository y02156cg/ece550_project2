module OR_bitwise(data_operandA, data_operandB, result);

   input [31:0] data_operandA, data_operandB;

   output [31:0] result;

	or or_g0(result[0], data_operandA[0], data_operandB[0]);
	or or_g1(result[1], data_operandA[1], data_operandB[1]);
	or or_g2(result[2], data_operandA[2], data_operandB[2]);
	or or_g3(result[3], data_operandA[3], data_operandB[3]);
	or or_g4(result[4], data_operandA[4], data_operandB[4]);
	or or_g5(result[5], data_operandA[5], data_operandB[5]);
	or or_g6(result[6], data_operandA[6], data_operandB[6]);
	or or_g7(result[7], data_operandA[7], data_operandB[7]);
	or or_g8(result[8], data_operandA[8], data_operandB[8]);
	or or_g9(result[9], data_operandA[9], data_operandB[9]);	
	or or_g10(result[10], data_operandA[10], data_operandB[10]);
	or or_g11(result[11], data_operandA[11], data_operandB[11]);
	or or_g12(result[12], data_operandA[12], data_operandB[12]);
	or or_g13(result[13], data_operandA[13], data_operandB[13]);
	or or_g14(result[14], data_operandA[14], data_operandB[14]);
	or or_g15(result[15], data_operandA[15], data_operandB[15]);
	or or_g16(result[16], data_operandA[16], data_operandB[16]);
	or or_g17(result[17], data_operandA[17], data_operandB[17]);
	or or_g18(result[18], data_operandA[18], data_operandB[18]);
	or or_g19(result[19], data_operandA[19], data_operandB[19]);
	or or_g20(result[20], data_operandA[20], data_operandB[20]);
	or or_g21(result[21], data_operandA[21], data_operandB[21]);
	or or_g22(result[22], data_operandA[22], data_operandB[22]);
	or or_g23(result[23], data_operandA[23], data_operandB[23]);
	or or_g24(result[24], data_operandA[24], data_operandB[24]);
	or or_g25(result[25], data_operandA[25], data_operandB[25]);
	or or_g26(result[26], data_operandA[26], data_operandB[26]);
	or or_g27(result[27], data_operandA[27], data_operandB[27]);
	or or_g28(result[28], data_operandA[28], data_operandB[28]);
	or or_g29(result[29], data_operandA[29], data_operandB[29]);
	or or_g30(result[30], data_operandA[30], data_operandB[30]);
	or or_g31(result[31], data_operandA[31], data_operandB[31]);


endmodule
