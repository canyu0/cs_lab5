`timescale 1ns / 1ps

module ALU2(
    input [31:0]a,
    input [31:0]b,
    input [2:0]op,
    output z,
    output reg[31:0]y
    );
    always@(a or b or op)begin
        case(op)
        3'b000:adder_32(a,b,1'b0,y,z,1'b0);
        //3'b000:y=a+b;
        3'b001:y=a-b;
        3'b010:y=a*b;
        3'b011:y=a<b?1:0;
        3'b100:y=a&b;
        3'b101:y=a|b;
        3'b110:y=~a;
        3'b111:y=a^b;
        default:y=0;
        endcase
    end    
    assign z=(y==0)?1:0;
endmodule
