module counterA(input clk,
	        input reset,
		input IncA,
		output reg [2:0] AddrA);

always @(posedge clk)
 begin
  if(reset)
	AddrA<=3'b000;
  else if(reset==0 && IncA==1)
	AddrA<=AddrA+1;
  else
	AddrA<=3'b000;
 end
endmodule
