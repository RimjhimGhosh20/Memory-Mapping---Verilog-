`timescale 10ns/1ns

module dflipflop(input [7:0] DOut1,
		 input clk,
		 output reg [7:0] DOut2);

always @(posedge clk)
 begin
 DOut2=DOut1;
  end
endmodule
