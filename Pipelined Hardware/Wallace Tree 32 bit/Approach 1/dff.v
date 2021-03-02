module d_ff (a,b,clk,q,q1);
   input [63:0]a;
   input [63:0]b;
   input clk;
   output [63:0]q;
   output [63:0]q1;	

   wire clk;
   reg [63:0]q;
   reg  [63:0]q1;

   always @ (posedge clk)
   begin
    q <= a;
    q1<=b;
 end

endmodule