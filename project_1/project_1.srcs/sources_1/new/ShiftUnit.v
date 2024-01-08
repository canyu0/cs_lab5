`timescale 1ns / 1ps

module ShiftUnit(
    input [25:0]addr26,
    output [27:0]addr28
    );
    assign addr28=addr26<<2;
endmodule
