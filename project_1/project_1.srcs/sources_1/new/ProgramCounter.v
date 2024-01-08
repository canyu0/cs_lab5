`timescale 1ns / 1ps


module ProgramCounter(
    input clk,
    input [31:0]addrin,
    output [31:0]addrout
    );
    reg [31:0]temp;
    initial temp=0;//为了在让PC值不是X，整个CPU运行起来，先初始化为0
    always@(posedge clk)begin
        if(addrin==32'bx)
            temp<=temp+4;
        else
            temp[31:0]<=addrin[31:0];
    end
    assign addrout[31:0]=temp[31:0];
endmodule
