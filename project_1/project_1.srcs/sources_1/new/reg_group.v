`timescale 1ns / 1ps


module reg_group(   
    input clk,
    input rd,
    input wr,
    input rst,
    input [3:0] addr,
    input [3:0] in,
    output [3:0] out
    );
    reg[3:0] bram [9:0];
    reg[3:0] dataout=4'bz;
    integer i;
    always @(posedge clk or posedge rst)
    begin
        if(rst)begin
            for(i=0;i<16;i=i+1)
                bram[i]<=4'b0;
        end
        else if(wr)begin
            bram[addr]<=in;
        end
        else if(rd)begin
            dataout<=bram[addr];
        end   
        else begin
            dataout<=4'bz;
        end    
   end 
   assign out=rd?dataout:4'bz;
endmodule
