`timescale 1ns/1ps
module stimulus;
	reg A;
	reg B;
	wire Z;
	
	circuit uut( .A(A), .B(B), .Z(Z));
	initial begin
		$dumpfile("test.vcd");
		$dumpvars(0, stimulus);
		A=0;
		B=0;
		#20 A=1;
		#20 B=1;
		#20 A=0;
		#40;
	end
	initial begin
		 $monitor("A=%d,B=%d,Z=%d \n",A,B,Z);
		 end
 
endmodule