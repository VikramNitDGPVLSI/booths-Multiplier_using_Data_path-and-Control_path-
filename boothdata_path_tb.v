`timescale 1ns/1ps
module boothmultiplier_tb();
  reg [15:0] data_in;
  reg clk,start;
  wire [31:0] result;
  reg  rst; 
  
  boothmultiplier dut(data_in,clk,start,result);
  
  initial
     begin
       clk = 0;
       forever #5 clk = ~clk;
     end
  
   
    
  initial
      begin
         rst=1'b1;
         #10 
         rst=1'b0;
         #10
        @(negedge clk) start = 1;
        @(negedge clk) data_in = 10;
        @(negedge clk) data_in = 13;
        #10 
         @(negedge clk) data_in = 4;
         @(negedge clk) data_in = 5;
        #10
         @(negedge clk) data_in = 14;
         @(negedge clk) data_in = 15;
         #10 
         @(negedge clk) data_in = 8;
         @(negedge clk) data_in = 12;
        #10
         @(negedge clk) data_in = 3;
         @(negedge clk) data_in = 14;
        #10
         @(negedge clk) data_in = 320;
         @(negedge clk) data_in = 140;
        #10
         @(negedge clk) data_in = 1200;
         @(negedge clk) data_in = 140;
         #10
         @(negedge clk) data_in = 920;
         @(negedge clk) data_in = 230;
          #10
         @(negedge clk) data_in = 720;
         @(negedge clk) data_in = 30007;
        #500 
        rst=1'b1;
        #10;
        rst=1'b0;
        #20
           $finish;
     end
  
    initial
      begin
        $dumpfile("boothmultiplier_tb.vcd");
        $dumpvars;
      
      end
  
endmodule
