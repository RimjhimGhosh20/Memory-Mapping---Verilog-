module subout(input [7:0] DOut1,
	      input[7:0]  DOut2,
	      output reg [7:0]  SUBOut);

always @(DOut1,DOut2)
 begin
  SUBOut = DOut2-DOut1;
 end
endmodule

