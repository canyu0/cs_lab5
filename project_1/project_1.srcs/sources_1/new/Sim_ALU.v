`timescale 1ns / 1ps


module Sim_ALU(

    );
    reg [3:0] X;
    reg [3:0] Y;
    reg C_0;
    reg M;
    reg [3:0] S; 
    ALU myalu(X,Y,S,C_0,M);
    initial begin
        X<=4'b0;
        Y<=4'b0;
        C_0<=0;
        M<=0;
        S<=4'b0;
        #100
       
        S<=4'b0001;X<=4'b1100;Y<=4'b1111;C_0<=1;M<=1;#10
        M<=0;#10
        S<=4'b1001;X<=4'b1100;Y<=4'b1111;C_0<=1;M<=1;#10
        M<=0;
    end
endmodule
