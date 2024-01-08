`timescale 1ns / 1ps



module Sim_ins(
    
    );
    reg[3:0]a,b;
    wire[3:0]y;
    reg[3:0]op;
    reg clk;
    instruction_coder coder(a,b,op,y);
    initial begin
        a<=4'ha;
        b<=4'h4;
        op<=3'b000;
        clk<=0;
    end
    always #50 begin
        op<=op+1; 
        #5
        clk<=~clk;   
    end 
endmodule
