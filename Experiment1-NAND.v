//NAND
    module nandGate;
    	reg x; 	// Inputx 
    	reg y;  // Inputy
    	wire z; // Outputz
    	nandComp uut (
    		.x(x),
    		.y(y), 
    		.z(z)
    	);
	initial begin
    	x = 0;
    	y = 0;
	#20 x = 1;
    	#20 y = 1;
    	#20 x = 0;	
    	end  
    		initial begin
    		 $monitor("x=%d,y=%d,z=%d \n",x,y,z);
    		 end
    endmodule
   module nandComp(
        input x,
        input y,
        output z
        );
    assign z = ~(x&y);
 endmodule
