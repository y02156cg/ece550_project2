module SRA(data_operand, ctrl_shiftamt, result);

   input [31:0] data_operand;
	input [4:0] ctrl_shiftamt;

   output [31:0] result;

	wire [31:0] mid1, mid2, mid3, mid4;
	wire [31:0] phase0, phase1, phase2, phase3, phase4;
	
	assign phase0 = data_operand[31] ? {1'b1, data_operand[31:1]} : {1'b0, data_operand[31:1]};
	mux_32bit mux0(.in0(data_operand), .in1(phase0), .sel(ctrl_shiftamt[0]), .out(mid1));

	assign phase1 = data_operand[31] ? {2'b11, mid1[31:2]} : {2'b00, mid1[31:2]};
	mux_32bit mux1(.in0(mid1), .in1(phase1), .sel(ctrl_shiftamt[1]), .out(mid2));

	assign phase2 = data_operand[31] ? {4'b1111, mid2[31:4]}: {4'b0000, mid2[31:4]};
	mux_32bit mux2(.in0(mid2), .in1(phase2), .sel(ctrl_shiftamt[2]), .out(mid3));

	assign phase3 = data_operand[31] ? {8'b11111111, mid3[31:8]}: {8'b00000000, mid3[31:8]};
	mux_32bit mux3(.in0(mid3), .in1(phase3), .sel(ctrl_shiftamt[3]), .out(mid4));

	assign phase4 = data_operand[31] ? {16'b1111111111111111, mid4[31:16]}: {16'b0000000000000000, mid4[31:16]};
	mux_32bit mux4(.in0(mid4), .in1(phase4), .sel(ctrl_shiftamt[4]), .out(result));

endmodule
