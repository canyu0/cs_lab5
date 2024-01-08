`timescale 1ns / 1ps

module RegisterFile(
    input clk,
    input regwr,
    input [31:0]wdata,
    input [4:0]reg1,
    input [4:0]reg2,//rt��reg1��rd��reg2
    input [4:0]wreg,
    output [31:0]rdata1,
    output [31:0]rdata2
    );
    reg [31:0]bram[31:0];
    integer i;
    initial begin
        for(i=0;i<32;i=i+1)
            bram[i]=i;//��ʼ���Ĵ�����
    end
    always@(posedge clk)begin
        if(regwr)
            bram[wreg]<=wdata;
    end
    assign rdata1=bram[reg1];
    assign rdata2=bram[reg2];
endmodule
