`timescale 10ns/1ns
module memoryA( input [2:0] AddrA,
		input WEA,
		input [7:0] DataInA,
		output reg [7:0] DOut1, input clk);

reg [7:0]MemA[0:7];
//reg [7:0] DOut1;


always @(posedge clk)
 begin
  if(WEA)
	MemA[AddrA]=DataInA;
  else 
	DOut1=MemA[AddrA];
  end 
endmodule
