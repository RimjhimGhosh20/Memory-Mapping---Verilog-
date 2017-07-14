module MainModule(input clk,reset,
		  input [7:0] DataInA,
	 	  output WEB,WEA,IncA,IncB,
		  output Sign,
		  output [7:0] DOut1,
		  output [7:0] DOut2,
	  	  output [7:0] Comp,
		  output [2:0] AddrA,
		  output [1:0] AddrB,
		  output [7:0] DataInB,
		  output [7:0] AddOut,
		  output [7:0] SUBOut,
       		  output [7:0]  AddOut1,
	  	  output [7:0]  SUBOut1);



controller c1(.clk(clk),.reset(reset),.WEA(WEA),.WEB(WEB),.IncA(IncA),.IncB(IncB));

counterA counterA(.clk(clk),.reset(reset),.IncA(IncA),.AddrA(AddrA));

memoryA memoryA(.AddrA(AddrA),.WEA(WEA),.DataInA(DataInA),.DOut1(DOut1), .clk(clk));

dflipflop dflipflop(.clk(clk),.DOut1(DOut1),.DOut2(DOut2));

comparator comparator(.DOut1(DOut1),.DOut2(DOut2),.Comp(Comp),.Sign(Sign));

adder add(.DOut1(DOut1),.DOut2(DOut2),.AddOut(AddOut));

subout sub(.DOut1(DOut1),.DOut2(DOut2),.SUBOut(SUBOut));

mux1 my_mux(.AddOut1(AddOut),.SUBOut1(SUBOut),.Sign(Sign),.DataInB(DataInB));

counterB counterB(.clk(clk),.reset(reset),.IncB(IncB),.AddrB(AddrB));

memoryB memoryB(.AddrB(AddrB),.WEB(WEB),.DataInB(DataInB), .clk(clk));

endmodule 