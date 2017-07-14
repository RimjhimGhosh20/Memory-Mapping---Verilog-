module controller(clk,reset,WEA,WEB,IncA,IncB);

input clk,reset;
output reg WEA,WEB,IncA,IncB;
reg [4:0] PS,NS;

localparam S0=5'b00000,S1=5'b00001,S2=5'b00010,S3=5'b00011,S4=5'b00100,S5=5'b00101,
	   S6=5'b00110,S7=5'b00111,S8=5'b01000,S9=5'b01001,S10=5'b01010,S11=5'b01011,
	   S12=5'b01100,S13=5'b01101,S14=5'b01110,S15=5'b01111,S16=5'b10000,S17=5'b10001,
	   S18=5'b10010;

initial
begin
  WEA=0;
  WEB=0;
  IncA=0;
  IncB=0;
  PS=S0;
  NS=S0;
end

always @(posedge clk)
begin
 PS=NS;
if (reset)
    begin
     NS = S0;
    end
else
  begin 
    case(PS)
      S0:
        begin
          NS = S1;
        end
      S1:
        begin
          NS = S2;
	  WEA=1;
  	  IncA=1;
	end
      S2:
        begin
          NS = S3;
	end
      S3:
        begin
          NS = S4;
	end
      S4:
        begin
          NS = S5;
	end
      S5:
        begin
          NS = S6;
	  WEA=1;
  	  IncA=1;
	end 
      S6:
        begin
          NS = S7;
	end 
      S7:
        begin
          NS = S8;
	end 
      S8:
        begin
          NS = S9;
	end 
      S9:
        begin
          NS = S10;
	  WEA=0;
	end 
      S10:
        begin
          NS = S11;
	end 
      S11:
        begin
          NS = S12;
	  WEB=1;
	end 
      S12:
        begin
          NS = S13;
	  WEB=0;
	  IncB=1;
	end 
      S13:
        begin
          NS = S14;
	  WEB=1;
  	  IncB=0;
	end 
      S14:
        begin
          NS = S15;
	  WEB=0;
  	  IncB=1;
	end 
      S15:
        begin
          NS = S16;
	  WEB=1;
  	  IncB=0;
	end 
      S16:
        begin
          NS = S17;
          WEB=0;
	  IncB=1;
	end 
      S17:
        begin
          NS = S18;
	  WEB=1;
  	  IncA=0;
	  IncB=0;
	end 
      S18:
        begin
          NS = S0;
  	  IncB=1;
	  WEB=0;
	end 
      default:
	  begin
	  NS = S0;
	  WEA=0;	
	  WEB=0;	
  	  IncA=0;
	  IncB=0;
	  end
      endcase 	
     end 
 end
endmodule

