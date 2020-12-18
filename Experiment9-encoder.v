module encoder(a,b,c,d,x,y);
	input a,b,c,d;
	output p,q;
	assign p = a | b;
	assign q = a | c;
endmodule
module test;
	reg a, b, c, d;
	wire p,q;
	encoder obj(a,b,c,d,p,q);
	initial begin
		$dumpfile("encoder.vcd");
		$dumpvars(0, test);
		$display("Inputs      |  Outputs");
		$display("A  B  C  D  |  P  Q");
		$monitor("%b  %b  %b  %b  |  %b  %b",a,b,c,d,p,q);
		a=0; b=0; c=0; d=1; 
		#5 a=0; b=0; c=1; d=0; 
		#5 a=0; b=1; c=0; d=0; 
		#5 a=1; b=0; c=0; d=0;
		$finish;
	end
endmodule
