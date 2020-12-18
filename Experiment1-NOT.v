//NOT
module notGate;
       	reg x;	// Input
      	wire z; 	// Output
    	notComp uut (
    		.x(x),  
    		.z(z)
    	);
     	initial begin
    	x = 0; // Initialize Inputs
    	#20 x = 1;

        end  
            initial begin
		 $dumpfile("Notgate.vcd");
		 $dumpvars(0, notGate);
		 $display("INPUT\tOUTPUT");
    		 $monitor("x=%d\tz=%d\n",x,z);
    		 end 
     endmodule
        module notComp(
        input x,
        output z
        );
    assign z = ~x;
endmodule
