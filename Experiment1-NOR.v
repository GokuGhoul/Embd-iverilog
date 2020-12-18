//NOR
module norGate;
    	reg x; 	// Inputx
    	reg y;  // Inputy
    	wire z; // Outputz
    	norComp uut (
    		.x(x), 
    		.y(y), 
    		.z(z)
    	);
    	initial begin // Initialize Inputs
    	x = 0;
    	y = 0;
    	#20 x = 1;
    	#20 y = 1;
    	#20 x = 0;	
    	//#20 x = 1;	  
    	//#40;
        end  
   		initial begin
		 $dumpfile("norGate.vcd");
		 $dumpvars(0, norGate);
		 $display("INPUT\tOUTPUT");
    		 $monitor("x=%d,y=%d,z=%d \n",x,y,z);
    		 end
    endmodule
module norComp(
        input x,
        input y,
        output z
        );
    assign z = ~(x|y);
  endmodule
