module mux1(input  [7:0]  AddOut1,
	    input  [7:0]  SUBOut1,
	    input  Sign,
	    output [7:0] DataInB);

assign DataInB= Sign ? SUBOut1 : AddOut1;

endmodule
