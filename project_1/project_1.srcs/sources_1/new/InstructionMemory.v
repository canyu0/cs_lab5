`timescale 1ns / 1ps


module InstructionMemory(
    input clk,//�������һ��ʱ���źţ�Ϊ�˵�һ��ָ���ܹ���ȷ���ж�����ֱ�ӵ��ڶ�������ΪPC��ֵ�Ѿ���ʼ��Ϊ0�ˣ���һ�������ؾͻ���4
    input [31:0]pc,
    output [5:0]opcode,
    /*output [4:0]rs,
    output [4:0]rt,
    output [4:0]rd,*/
    output [25:0]addr26/*,
    output [15:0]imm16*/
    );
    reg [7:0] bram[127:0];//���ݴ�������Ϊ��rom
    reg [31:0]in;//instruction
    reg [31:0]address;   
    reg [5:0]Opcode;
    reg haltflag=0;
    integer i;
    initial begin
        $readmemb("C:/Users/27486/Desktop/lab5/project_1/project_1.srcs/sources_1/imports/project_789/instruction.txt", bram); // ���ļ��ж�ȡָ������ƴ���
        in= 0; // ָ���ʼ��
    end
   
    always@(posedge clk)begin
        address=pc[5:2]<<2;
        in = (bram[address]<<24) + (bram[address+1]<<16) + (bram[address+2]<<8) + bram[address+3];
        Opcode=in[31:26];
        if(Opcode==6'b111111)
            haltflag=1;
        if(haltflag)
            Opcode=6'b111111;       
    end
    assign opcode[5:0]=Opcode;
    /*assign rs[4:0]=in[25:21];
    assign rt[4:0]=in[20:16];
    assign rd[4:0]=in[15:11];*/
    assign addr26[25:0]=in[25:0];
    //assign imm16[15:0]=in[15:0];
endmodule
