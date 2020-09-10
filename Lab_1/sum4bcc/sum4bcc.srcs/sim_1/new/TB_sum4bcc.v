`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2020 11:56:45 PM
// Design Name: 
// Module Name: TB_sum4bcc
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


module TB_sum4bcc(
    );
    
    reg [3:0] A;
    reg [3:0] B;
    
    
    wire [3:0] S;
    wire Cout;
    
    sum4bcc uut(
    .A(A),
    .B(B),
    .S(S),
    .Cout(Cout)
    );
    
    initial begin
        
        B=0;
        
        for(A=0;A<16;A=A+1)begin
        
            if(A==0) B=B+1;
            
            #5 $display("%d + %d = %d",A,B,S);
            
        end
        
    end
    
    initial begin:TEST_CASE
        $dumpfile("TB_sum4bcc.v");
        #(800);
        $finish;
    end
    
endmodule
