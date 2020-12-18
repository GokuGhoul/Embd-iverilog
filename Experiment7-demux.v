module demux(s1,s0,a,b,c,d,e,i);
	input s1,s0,e,i;
	output a,b,c,d;
	assign a =i&e&~s1&~s0;
	assign b =i&e&~s1&s0;
	assign c =i&e&s1&~s0;
	assign d =i&e&s1&s0;
endmodule

module test;
	reg s1, s0, e, i;
	wire a, b, c, d;
	demux obj(s1,s0,a,b,c,d,e,i);
	initial 
		begin
		$dumpfile("demux.vcd");
		$dumpvars(0, test);
		$display("e\ts1\ts0\td\tc\tb\ta");
		$monitor("%b\t%b\t%b\t%b\t%b\t%b\t%b" ,e,s1,s0,d,c,b,a);
		i=1; e=0; s1=0; s0=0;
		#10  i=1; e=1; s1=0; s0=0;
		#10  i=1; e=1; s1=0; s0=1;
		#10  i=1; e=1; s1=1; s0=0;
		#10  i=1; e=1; s1=1; s0=1;
	 $finish;
	end
endmodule
