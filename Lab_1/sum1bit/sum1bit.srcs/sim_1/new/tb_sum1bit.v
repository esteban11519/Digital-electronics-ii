`timescale 1ns / 1ps

module tb_sum1bit(
    );

reg A,B,Cin;
wire Cout,S;
    
sum1bit uut(
    .A(A),
    .B(B),
    .Cin(Cin),
    .Cout(Cout),
    .S(S)
);


reg [2:0] aux;

initial begin
    
    for(aux=0;aux<9;aux=aux+1) begin
    A=aux[2];
    B=aux[1];
    Cin=aux[0];
    #5 $display("La suma de %d + %d + %d = %d%d",A,B,Cin,Cout,S);
    end

end

initial begin: TEST_CASE
$dumpfile("tb_sum1bit.v");
#(60);
$finish;
end


    
endmodule
