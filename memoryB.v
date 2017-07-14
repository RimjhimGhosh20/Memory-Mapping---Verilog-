module memoryB( input [1:0] AddrB,
		input WEB,
		input [7:0] DataInB, input clk);

reg [7:0]MemB[0:3];
//reg [7:0] DOut1;

always @(posedge clk)
 begin
  if(WEB)
	MemB[AddrB]=DataInB;
  end 
endmodule
