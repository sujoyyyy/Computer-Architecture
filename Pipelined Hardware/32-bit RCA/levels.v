module lvl(y,x,k);
input [31:0][7:0]x;
output reg [31:0][7:0] y ;
input [2:0] k;
integer i=0,j=0;

always@(*)
begin
j<=k;
for(i=0;i<32;i=i+1)
begin
y[i]=x[i];
end

for(i=31;(i-2**j)>=0;i=i-1) //loop will run for 5 levels
begin
if(y[i]=="k")
begin
y[i]="k";
end

else if(y[i]=="p")
begin
if(y[i-2**j]=="k")
y[i]="k";
else if(y[i-2**j]=="p")
y[i]="p";
else
y[i]="g";
end

else 
begin
y[i]="g";
end

end

end
endmodule
