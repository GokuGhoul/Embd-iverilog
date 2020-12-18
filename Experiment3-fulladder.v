	module fulladder(x,y,z,c,s); 
		input x,y,z; 
		output c,s; 
		assign c=x&y|(x^y)&z ; 
		assign s=x^y^z; 
	endmodule

	module test; 
		reg x1,y1,z1; 
		wire c1,s1; 
		fulladder h1(x1,y1,z1,c1,s1); 
		
		initial begin
 			$dumpfile("fulladd.vcd"); 
			$dumpvars(0,test);
			 $display("X\tY\tZ\tC\tS"); 
			 $monitor("%b\t%b\t%b\t%b\t%b",x1,y1,z1,c1,s1); 
				x1=0; y1=0;z1=0; 
				#10; 
				x1=0; y1=0;z1=1; 
				#10; 
				x1=0; y1=1;z1=0; 
				#10; 
				x1=0; y1=1;z1=1; 
				#10; 
				x1=1; y1=0;z1=0; 
				#10; 
				x1=1; y1=0;z1=1; 
				#10; 
				x1=1; y1=1;z1=0; 
				#10; 
				x1=1; y1=1;z1=1; 
				#10; 
				$finish; 
		end 
	endmodule
