module d_ff (a,b, clk, q,q1);
   input [63:0]a;
   input [63:0]b;
   //input [63:0]c;
   input clk;
   output [63:0]q;
   output  [63:0]q1;	
  // output [63:0]q63;
   wire clk;
   reg [63:0]q;
   reg  [63:0]q1;
   //reg [63:0]q63;
   always @ (posedge clk)
   begin
    q <= a;
    q1<=b;
    //q63 <= c;
 end

endmodule