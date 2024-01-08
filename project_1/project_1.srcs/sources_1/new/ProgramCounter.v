`timescale 1ns / 1ps


module ProgramCounter(
    input clk,
    input [31:0]addrin,
    output [31:0]addrout
    );
    reg [31:0]temp;
    initial temp=0;//Ϊ������PCֵ����X������CPU�����������ȳ�ʼ��Ϊ0
    always@(posedge clk)begin
        if(addrin==32'bx)
            temp<=temp+4;
        else
            temp[31:0]<=addrin[31:0];
    end
    assign addrout[31:0]=temp[31:0];
endmodule
