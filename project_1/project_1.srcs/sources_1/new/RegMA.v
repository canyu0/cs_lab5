`timescale 1ns / 1ps


module RegMA(
    input clk,
    input [31:0]aluout,
    input [31:0]dmout,
    input [31:0]ir,
    input dst,mtr,
    output [31:0]Aluout,
    output [31:0]Dmout,
    output [31:0]IR,
    output Dst,Mtr
    );
    reg [31:0]a;
    reg [31:0]b;
    reg [31:0]c;
    reg d,e;
    always@(posedge clk)begin
        a<=aluout;
        b<=dmout;
        c<=ir;
        d<=dst;
        e<=mtr;
    end
    assign Dst=d;
    assign Mtr=e;
    assign Aluout=a;
    assign Dmout=b;
    assign IR=c;
endmodule
