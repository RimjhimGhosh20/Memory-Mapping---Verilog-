module comparator(input [7:0] DOut1,
		  input [7:0] DOut2,
	  	  output reg [7:0] Comp,
		  output reg Sign);


always @(DOut1,DOut2)
 begin
  
  Comp=((~DOut1)+1)+DOut2;
 
  if(Comp[7]==1)
  	Sign=0;
  else
	Sign=1;

 end
endmodule
