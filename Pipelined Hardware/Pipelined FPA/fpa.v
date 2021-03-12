`include "getval.v"
`include "bs.v"
`include "barrel.v"
`include "levels.v"


// Inputs 'a' and 'b' with reset,clock and final output.
module fpa(
    input [32:1] a,
    input [32:1] b,
    input rst,clk,
    output [32:1] c
    );


// intermediate variables to store the mantissas of a and b.

output wire [32:1] w_MAN_a,w_MAN_a1,w_MAN_a2,w_MAN_a3,w_MAN_a4;      //to store mantissa value of a
output wire [32:1] w_MAN_b,w_MAN_b1,w_MAN_b2,w_MAN_b3,w_MAN_b4;      //to store mantissa value of b


// to store the sum of mantissas
wire [32:1] sum,ai,bi; 
// intermediate variables for exponents of a and b.
wire [8:1] exp_a,exp_b,dif,exp_a1,exp_b1,exp_a2,exp_b2,exp_a3,exp_b3,exp_a4,exp_b4;        //to store exp value of a,b and to store difference of exp of a exp of b

wire [32:1] w_MAN_bs;        //to store shifted mantissa value of b
wire sign_a,sign_b,sign_a1,sign_b1,sign_a2,sign_b2,sign_a3,sign_b3,sign_a4,sign_b4;       //to store sign value of a and b


reg sign_c;                //to store sign value of c
reg [8:1] r_EXP_c;         //to store exp value of c
reg [32:1] r_MAN_c;        //to store mantissa value of c
integer i;

// Pipeline 1
//1 - module gets two numbers as input and stores the mantissa, exp and sign of resp nos 
// Splits the numbers 'a' and 'b' into their corresponding sign, exponent and mantissa.


dff_lvl_1 p1(a,b,rst,clk,ai,bi);
getval m0(ai,bi,w_MAN_a1,w_MAN_b1,exp_a1,exp_b1,sign_a1,sign_b1);          



// Pipeline 2
//2 - module gets difference between exp of a and b
dff_lvl_2 p2(w_MAN_a1,w_MAN_b1,exp_a1,exp_b1,sign_a1,sign_b1,rst,clk,w_MAN_a2,w_MAN_b2,exp_a2,exp_b2,sign_a2,sign_b2);

// get the difference between their exponents and store it in dif
getdif m1(exp_a2,exp_b2,dif);




// Pipeline 3
//3 - Barrel shift - RIGHT
dff_lvl_2 p3(w_MAN_a2,w_MAN_b2,exp_a2,exp_b2,sign_a2,sign_b2,rst,clk,w_MAN_a3,w_MAN_b3,exp_a3,exp_b3,sign_a3,sign_b3);

// shift the mantissa of b using barrel shifter and store in w_MAN_bs
bs_right m2(w_MAN_b3,dif,1'b1,1'b0,w_MAN_bs);




// Pipeline 4
//4 - module stores sum of mantissa of a and b according to the sign of a and b
dff_lvl_2 p4(w_MAN_a3,w_MAN_b3,exp_a3,exp_b3,sign_a3,sign_b3,rst,clk,w_MAN_a4,w_MAN_b4,exp_a4,exp_b4,sign_a4,sign_b4);
comparator m3(w_MAN_a4,w_MAN_bs,sign_a4,sign_b4,sum);                  

// Comperator only checks if the sign of the numbers are safe. If they are not then since the smaller number is stored in b its 2's compliment is obtained and returned.


// Pipeline 5
dff_lvl_2 p5(w_MAN_a4,w_MAN_b4,exp_a4,exp_b4,sign_a4,sign_b4,rst,clk,w_MAN_a,w_MAN_b,exp_a,exp_b,sign_a,sign_b);

always@(posedge clk)
begin
    sign_c=sign_a;
    r_EXP_c=exp_a;
    r_MAN_c=sum;
    
    if(a[31:1]==b[31:1] && sign_a!=sign_b)      //checks whether both numbers are equal and of oppposite sign
    begin
        sign_c=1'b0;
        r_EXP_c=8'b0;
        r_MAN_c[24]=1'b1; // hidden 1 
    end

    i=32;
    while(r_MAN_c[i]==0)        //find the difference to be shifted to normalize again incase of denormalized sum
        i=i-1;

    if(i>24)
    begin
    if(w_MAN_a==32'h0080_0000 && w_MAN_b==32'h0080_0000 && sum[25]!=1)        // incase of sum of mantissa being 0
        i=0;
    else
        i=i-24;

    
    if((a[31:24]==8'd0 && a[23:1]!=0) || (b[31:24]==8'd0 && b[23:1]!=0))  
    begin
        r_MAN_c=r_MAN_c;
        if(sum>=32'h0180_0000)      //subnormal sum check
            i=i+1;
    end

    else
        r_MAN_c=r_MAN_c>>i;
        r_EXP_c=r_EXP_c+i;
    end

    else
    begin
        i=24-i;
        r_MAN_c=r_MAN_c<<i;
        r_EXP_c=r_EXP_c-i;
    end

    if((a[31:24]==8'hff && a[23:1]!=23'b0) || (b[31:24]==8'hff && b[23:1]!=23'b0))  //to handle nan cases
    begin
        r_EXP_c=8'hff;
        r_MAN_c=32'd1;
    end
    else if(a[31:24]==8'hff ||b[31:24]==8'hff )     // to handle inf cases
    begin
        r_EXP_c=8'hff;
        r_MAN_c=32'd0;
    end
end

//Pipeline - 6
dff_lvl_3 p6(sign_c,r_EXP_c,r_MAN_c,rst,clk,c);

endmodule

//Test Module 
module top;
reg [32:1] a,b;
reg rst,clk;
wire [32:1] c;
fpa f1(a,b,rst,clk,c);
integer i;
initial
begin
    // 6 + 8 = 14
    #0  a={1'b0,{8'b10000001},23'b10000000000000000000000}; b={1'b0,{8'b10000010},23'b00000000000000000000000};
    // 9.75 + 0.5625 = 10.3125
    #10 a={1'b0,{8'b10000010},23'b00111000000000000000000}; b={1'b0,{8'b01111110},23'b00100000000000000000000};
    // -6 + -8 = -14
    #10 a={1'b1,{8'b10000001},23'b10000000000000000000000}; b={1'b1,{8'b10000010},23'b00000000000000000000000};
    // -6 + 8 = 2
    #10 a={1'b1,{8'b10000001},23'b10000000000000000000000}; b={1'b0,{8'b10000010},23'b00000000000000000000000};
    //inf+(-6)=inf
    #10 a={1'b0,{8'b11111111},23'b00000000000000000000000}; b={1'b1,{8'b10000001},23'b10000000000000000000000};
    // zero + something
    #10 a={32'b0}; b={1'b0,{7{1'b1}},24'b111011}; 
    //infinity + zero
    #10 a={32'b0}; b={1'b0,{8{1'b1}},23'b0};
end

initial
begin
    clk=1;
    rst=0;
    rst=1;
    for (i=0;i<150;i++)
        #1 clk=~clk;
end

initial
    $monitor($time,"  Clock:%b    Input:\t\tA: %b\tB: %b\n\t\t\tOutput:\t\tC: %b\n",clk,a,b,c);

endmodule
