module isnotequal(data_operand, result);

   input [31:0] data_operand;

   output result;
	
	wire [30:0] m;
	wire temp;

	or or_g0(m[0], data_operand[0], data_operand[1]);
	genvar i;
	generate 
		for (i=1; i<31 ; i=i+1) begin: or_gate_loop
			or or_Equal(m[i], m[i-1], data_operand[i+1]);
		end
	endgenerate

	assign result = m[30];

endmodule