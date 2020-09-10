`timescale 1ns / 1ps
module sum1bit(
    A,
    B,
    Cin,
    Cout,
    S
    );
    
    input wire A;
    input wire B;
    input wire Cin;
    
    output wire Cout;
    output wire S;
     
    
    assign S= aux_S[0];
    assign Cout= aux_S[1];
    
    reg [1:0]aux_S;
    
   always @(*) begin
   
   aux_S=A+B+Cin;
   
   end
    
endmodule
