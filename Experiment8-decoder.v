module decoder(a,b,c,d,e,f,E);
	input a,b,E;
	output c,d,e,f;
	assign c = E&a&b;
	assign d = E&a&(~b);
	assign e = E&(~a)&b;
	assign f = E&(~a)&(~b);
endmodule 

module testbench;
	reg a, b, E;
	wire c,d,e,f;
	decoder obj(a,b,c,d,e,f,E);
	initial begin
		$dumpfile("decoder.vcd");
		$dumpvars(0, testbench);
		$display("Inputs      |  Outputs");
		$display("E  a  b  |  c  d  e  f");
		$monitor("%b  %b  %b  |  %b  %b  %b  %b",E,a,b,c,d,e,f);
		E=0 ; a=0; b=0; 
		#5 E=1; a=0; b=0; 
		#5 E=1; a=0; b=1; 
		#5 E=1; a=1; b=0;
		#5 E=1; a=1; b=1;
		#5	$finish;
	end
endmodule
