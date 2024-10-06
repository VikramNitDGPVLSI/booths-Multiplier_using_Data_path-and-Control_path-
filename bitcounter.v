
module bitcounter(count,decr,ldcount,clk);
     input decr,ldcount,clk;
	 output reg [4:0] count;
	 
	 always@(posedge clk)
	   begin
	       if(ldcount)
		      countdata <= 16; //since datain is of 16 bits width
		   else if(decr)
              count <= count - 1;			
	   end
	   
endmodule
	 
