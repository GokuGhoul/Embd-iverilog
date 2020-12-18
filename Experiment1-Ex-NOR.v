//EX-NOR 
module xnorGate; 
    	reg x; 	// Inputx
    	reg y;  // Inputy
    	wire z; // Outputz
    	xnorComp uut (
    		.x(x), 
    		.y(y), 
    		.z(z)
    	);
     	initial begin // Initialize Inputs
    	x = 0;
    	y = 0;
     	#20 y = 1;
        #20 y=0;
            x=1;
    	#20 x = 1;
            y=1;	
    	//#20 x = 1;	  
    	//#40;
        end  
            initial begin
		 $dumpfile("xorGate.vcd");
		 $dumpvars(0, xorGate);
		 $display("INPUT\tOUTPUT");
    		 $monitor("x=%d,y=%d,z=%d \n",x,y,z);
    		 end
     endmodule
         module xnorComp(
        input x,
        input y,
        output z
        );
    assign z = ((x&y)|(~x&~y));
    endmodule
