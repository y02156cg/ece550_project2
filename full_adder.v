module full_adder(
	input a,
	input b,
	input cin,
	output sum,
	output cout
);

	xor first_xor(axorb, a, b);
	xor second_xor(sum, axorb, cin);
	
	and first_and(axorbandcin, axorb, cin);
	and second_and(aandb, a, b);
	
	or first_or(cout, aandb, axorbandcin);
	


endmodule