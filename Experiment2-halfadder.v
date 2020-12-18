//halfadder
module halfadd; 
		reg a1,b1; 
		wire carry1,sum1; 
		halfadder h1(a1,b1,carry1,sum1); 
		
		initial begin
 			$dumpfile("halfadd.vcd"); 
			$dumpvars(0,halfadd);
			 $display("a\tb\tcarry\tsum"); 
			 $monitor("%b\t%b\t%b\t%b",a1,b1,carry1,sum1); 
				a1=0; b1=0; 
				#10; 
				a1=0; b1=1; 
				#10; 
				a1=1; b1=0; 
				#10; 
				a1=1; b1=1; 
				#10; 
				$finish; 
		end 
	endmodule
