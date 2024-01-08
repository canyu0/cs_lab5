`timescale 1ns / 1ps


module Multiplexer(
    input e,
    input [31:0]a,
    input [31:0]b,
    output [31:0]c
    );
    reg [31:0]d;
    always@(*)
        if(e==1)
            d<=a;
        else
            d<=b;
    assign c=d;
endmodule
