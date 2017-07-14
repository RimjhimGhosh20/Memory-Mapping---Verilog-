module counterB(input clk,
	        input reset,
		input IncB,
		output reg [1:0] AddrB);

initial
begin
 AddrB=2'b00;
end

always @(posedge clk)
 begin
  if(reset)
	AddrB<=2'b00;
  else if(reset==0 && IncB==1)
	AddrB<=AddrB+1;
 end
endmodule
