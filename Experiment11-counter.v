module counter(clk,rst,en,c);
  input clk,rst,en;
  output [1:0] c;
  reg [1:0] c;
  always @(posedge (clk))
  begin
    if(rst==1)
    c = 2'b00;
    else if(en==1)
    c = c+1;
  end
endmodule
module simulate;
  reg clk,rst,en;
  wire [1:0] c;
  integer a;
  counter obj(clk,rst,en,c);
  initial begin
    $dumpfile("counter.vcd");
    $dumpvars(0,simulate);
    $display("CLK RST EN   | count");
    $monitor("%b   %b   %b  |  %b",clk,rst,en,c);
    #2 rst=1; 
    #16 en=1;rst=0; 
    #2 en=0;rst=0; 
    #10 en=1;rst=0; 
    #2 en=1;rst=1; 
    $finish;
  end
  initial begin
    clk=0;
    for(a=0;a<32;a++)
    #1 clk = ~clk;
  	  end
  endmodule
