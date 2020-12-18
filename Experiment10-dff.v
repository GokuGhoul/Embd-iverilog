module dflipflop(clk,D,Qn,QN);
  input clk,D,Qn;
  output QN;
  assign QN = clk&D;
endmodule

module simulate;
  reg clk,D,Qn;
  wire QN;
  dflipflop obj(clk,D,Qn,QN);
    initial begin
    $dumpfile("dff.vcd");
    $dumpvars(0,simulate);
    $display("Inputs    | Outputs");
    $display("CLK D Qn  | QN");
    $monitor("%b %b %b  | %b ",clk,D,Qn,QN);
    clk=0;D=0;Qn=0;
    #5 clk=1;D=0;Qn=0;
    #5 clk=1;D=1;Qn=0;
    #5 clk=1;D=0;Qn=l; 
    #5 clk=1;D=1;Qn=1;
    #5 $finish;
  end
endmodule
