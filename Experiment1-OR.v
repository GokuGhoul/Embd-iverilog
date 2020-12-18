//OR
module orGate;
    	reg x; // Input
    	reg y; // Input
    	wire z;// Output
    	orComp uut (
    		.x(x), 
    		.y(y), 
    		.z(z)
    	);
        initial begin // Initialize Input
    	x = 0;
    	y = 0;
        #20 x = 1;
    	#20 y = 1;
    	#20 x = 0;	
    	//#20 x = 1;	  
    	//#40;
        end  
            initial begin
		 $dumpfile("orGate.vcd");
		 $dumpvars(0, orGate);
		 $display("INPUT\tOUTPUT");
    		 $monitor("x=%d,y=%d,z=%d \n",x,y,z);
    		 end
     endmodule
        module orComp(
        input x,
        input y,
        output z
        );
    assign z = x|y;
    endmodule
