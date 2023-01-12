`timescale 1ns/1ps
module stimulus;
	reg A;
	reg B;
	reg C;
	reg D;
	wire Z;
	
	inpoutp uut( .A(A), .B(B), .C(C), .D(D), .Z(Z));
	initial begin
	
		A=0;
		B=0;
		C=0;
		D=0;
		#20 B=1;
		#20 A=1;
		#20 C=1;
		#20 D=1;
		#20 A=0;
		#20 B=0;
		#20 C=0;
		#20 A=1;
		#20 B=1;
		#20 A=0;
		#40;
	end
	initial begin
		 $monitor("A=%d, B=%d, C=%d, D=%d, Z=%d \n",A,B,C,D,Z);
		 end
 
endmodule