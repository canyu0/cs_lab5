`timescale 1ns / 1ps


module SignalExtension(
    input [15:0]imm16,
    output [31:0]alua
    );
    reg [15:0]zero=0;
    assign alua={zero,imm16};
endmodule
