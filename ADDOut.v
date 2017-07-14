module adder(input [7:0] DOut1,
	     input [7:0] DOut2,
             output reg [7:0] AddOut);

always @(DOut1,DOut2)
 begin	
  AddOut= DOut2+DOut1;
 end

endmodule






