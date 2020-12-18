module xor_gate(a1, b1, c1);
	input a1, b1;
	output c1;
	assign c1 = a1 ^ b1;
endmodule
module and_gate(a2, b2, c2);
	input a2, b2;
	output c2;
	assign c2 = a2 & b2;
endmodule
module not_gate(a3, b3);
	input a3;
	output b3;
	assign b3 = ~ a3;
endmodule
module half_subtractor(a, b, difference, borrow);
	input a, b;
	output difference, borrow;
	wire x;
	xor_gate u1(a, b, difference);
	not_gate u3(a, x);
	and_gate u2(x, b, borrow);
endmodule
module top; //simulation
 reg  A, B;
 wire Difference, Borrow; 
  half_subtractor instantiation(.a(A), .b(B), .difference(Difference), .borrow(Borrow));
  initial  begin
$dumpfile("hsub.vcd");
$dumpvars;
A=0;  B=0;
#100 
A=0;  B=1;
#100 
A=1;  B=0;
#100
A=1;  B=1;
#100  
$finish;
    end
initial begin
$monitor(" A=%d, B=%d, Difference = %d, Borrow = %d",  A, B, Difference, Borrow);  
end
endmodule
