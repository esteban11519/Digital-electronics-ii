`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2020 11:40:36 PM
// Design Name: 
// Module Name: sum4bcc
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sum4bcc(
    A,
    B,
    S,
    Cout
    );
    
    input wire [3:0] A;
    input wire [3:0] B;
    output wire [3:0] S;
    output wire Cout;
    
    wire C0, C1, C2;

    sum1bit sum1(.A(A[0]), .B(B[0]), .Cin(0), .S(S[0]), .Cout(C0));
    sum1bit sum2(.A(A[1]), .B(B[1]), .Cin(C0), .S(S[1]), .Cout(C1));
    sum1bit sum3(.A(A[2]), .B(B[2]), .Cin(C1), .S(S[2]), .Cout(C2));
    sum1bit sum4(.A(A[3]), .B(B[3]), .Cin(C2), .S(S[3]), .Cout(Cout));
    
endmodule
