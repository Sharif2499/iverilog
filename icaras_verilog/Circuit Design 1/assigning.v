module inpoutp( 
	input A, 
	input B, 
	input C, 
	input D, 
	output Z
	);
assign Z=(A & B & C & ~D)|(~A & B & ~C & ~D);

endmodule