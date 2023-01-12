module circuit( input A, input B, output Z);
assign Z=(~A & B)|(~A & ~B)|(A & B)|(~A & B);
endmodule