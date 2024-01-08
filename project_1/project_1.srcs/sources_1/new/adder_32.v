`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/29 14:32:31
// Design Name: 
// Module Name: adder_32
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


module adder_32(
    input [31:0] A,
    input [31:0] B,
    input Ci,
    output reg[31:0] S,
    output Co,
    input EN
    );
    wire [32:0] ct;
    assign ct[0] = Ci;
    genvar i;
    wire [31:0] TS;
    generate
        for(i=0;i<32;i=i+1)begin : adderLoop
            full_adder FA(
            .a(A[i]),
            .b(B[i]),
            .cin(ct[i]),
            .sum(TS[i]),
            .cout(ct[i+1])
            );
        end
    endgenerate
    assign Co = ct[32];
    always @(A,B,EN) begin
    if(EN == 1) S=32'bz;
    else S<=TS;
    end
endmodule
