`include "levels.v"
module dff_lvl (input [31:0][7:0]d,input rst,input clk,output reg [31:0][7:0] q,output reg[31:0] wr1,output reg[31:0] wr2,input [31:0]a,input [31:0]b);  
    always@(posedge clk )  
       if (!rst)  
       begin
          q <= 0;
          wr1<=0;
          wr2<=0;  
       end
       else  
       begin
          q <= d;  
          wr1<=a;
          wr2<=b;
       end
endmodule  

module ppc(y,x,rst,clk,a,b,c,d);
input [31:0][7:0]x;
input [31:0] a,b;
output  [31:0][7:0] y ;
output [31:0] c,d;
input rst,clk;

wire [31:0][7:0]reg1,reg2,reg3,reg4,reg5;
wire[31:0] wr6,wr7,wr8,wr9,wr10,wr11,wr12,wr13,wr14,wr15;
wire [31:0][7:0] wr1,wr2,wr3,wr4,wr5 ;


dff_lvl c1(x,rst,clk,reg1,wr6,wr7,a,b); //pipeline-2
lvl m1(wr1,reg1,3'd0);

dff_lvl c2(wr1,rst,clk,reg2,wr8,wr9,wr6,wr7); //pipeline-3
lvl m2(wr2,reg2,3'd1);

dff_lvl c3(wr2,rst,clk,reg3,wr10,wr11,wr8,wr9); //pipeline-4
lvl m3(wr3,reg3,3'd2);

dff_lvl c4(wr3,rst,clk,reg4,wr12,wr13,wr10,wr11); //pipeline-5
lvl m4(wr4,reg4,3'd3);

dff_lvl c5(wr4,rst,clk,reg5,wr14,wr15,wr12,wr13); //pipeline-6
lvl m5(wr5,reg5,3'd4);

dff_lvl c6(wr5,rst,clk,y,c,d,wr14,wr15); //pipeline-7
endmodule
