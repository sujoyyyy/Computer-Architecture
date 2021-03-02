module dff_lvl (input [63:0][7:0]d,input rst,input clk,output reg [63:0][7:0] q,output reg[63:0] wire1,output reg[63:0] wire2,input [63:0]a,input [63:0]b);  
  
    always@(posedge clk )  
       if (!rst)  
       begin
          q <= 0;
          wire1<=0;
          wire2<=0;  
       end
       else  
       begin
          q <= d;  
          wire1<=a;
          wire2<=b;
       end
endmodule  

module dff (input [63:0]a,input [63:0]b,input rst,input clk,output reg [63:0] c,output reg [63:0] d);  
  
    always @ (posedge clk )  
    begin
       if (!rst)  
       begin
         c = 0; 
         d = 0; 
       end
       else  
       begin
          c = a;
          d = b;  
       end

    end
endmodule  