`timescale 1ns / 1ps

module Sim_simpleALU(

    );
    reg[3:0]a,b;
    wire[3:0]y;
    reg[2:0]op;
    SimpleALU myalu(a,b,op,y);
    initial begin
        a=4'ha;
        b=4'h4;
        op=3'b000;
    end
    always #50 begin
        op=op+1;    
    end  
endmodule
