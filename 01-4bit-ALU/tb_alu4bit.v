`timescale 1ns/1ps

module tb_alu4bit;

reg [3:0] A;
reg [3:0] B;
reg [2:0] OP;

wire [3:0] RESULT;

alu4bit uut(
    .A(A),
    .B(B),
    .OP(OP),
    .RESULT(RESULT)
);

initial begin

A = 4'b0101;
B = 4'b0011;

OP = 3'b000;
#10;

OP = 3'b001;
#10;

OP = 3'b010;
#10;

OP = 3'b011;
#10;

OP = 3'b100;
#10;

$finish;

end

endmodule