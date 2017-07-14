`timescale 10ns/1ns;
module MainModule_tb;

reg clk,reset;
reg [7:0] DataInA;
wire WEB,WEA,IncA,IncB;
wire [7:0] DOut1,DOut2;
wire [7:0] Comp;
wire Sign;
wire [2:0] AddrA;
wire [1:0] AddrB;
wire [7:0] DataInB;
wire [7:0] AddOut;
wire [7:0] SUBOut;
wire [7:0]  AddOut1;
wire [7:0]  SUBOut1;


MainModule MainModule(.clk(clk),.reset(reset),.WEA(WEA),.WEB(WEB),.IncA(IncA),.IncB(IncB),.DataInA(DataInA),.DOut1(DOut1),.DOut2(DOut2),.Comp(Comp),
		      .AddrA(AddrA),.AddrB(AddrB),.DataInB(DataInB),.AddOut(AddOut),.SUBOut(SUBOut),.AddOut1(AddOut1),.SUBOut1(SUBOut1),.Sign(Sign));

initial
begin
clk=0;
reset=1;
#5 reset=0;
DataInA = 0;
end

initial
begin
#15;
@(negedge clk)
DataInA=-2;
@(negedge clk)
DataInA=-3;
@(negedge clk)
DataInA=-4;
@(negedge clk)
DataInA=-7;
@(negedge clk)
DataInA=-6;
@(negedge clk)
DataInA=-10;
@(negedge clk)
DataInA=-8;
@(negedge clk)
DataInA=-9;
#20;
end

always   
  begin
#5 clk= ~ clk;
  end

endmodule
