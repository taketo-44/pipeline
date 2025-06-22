`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/06/10 19:00:35
// Design Name: 
// Module Name: ALU_tb
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


module ALU_tb;
    reg a ,b;
    reg [3:0] op; // Operation select
    wire s; // 1-bit output
    wire c_in; // Carry in
    wire c_out; // Carry out

    ALU alu (
        .a(a),
        .b(b),
        .op(op),
        .c_in(c_in),
        .c_out(c_out),
        .s(s)
    );
    initial begin
        // Test case 1: Addition
        a = 1'b0; // 0
        b = 1'b1; // 1
        op = 4'b0000; // Add operation
        #10; // Wait for 10 time units
        $display("Addition: %b + %b = %b, c_out = %b", a, b, s, c_out);

        // Test case 2: Subtraction
        a = 1'b1; // 1
        b = 1'b0; // 0
        op = 4'b0001; // Subtract operation
        #10;
        $display("Subtraction: %b - %b = %b, c_out = %b", a, b, s, c_out);

        // Test case 3: Bitwise AND
        a = 1'b1; // All bits set
        b = 1'b0; // Some bits set
        op = 4'b0010; // AND operation
        #10;
        $display("Bitwise AND: %b & %b = %b, c_out = %b", a, b, s, c_out);

        // Test case 4: Bitwise OR
        a = 1'b0; // All bits set
        b = 1'b1; // Some bits set
        op = 4'b0011; // OR operation
        #10;
        $display("Bitwise OR: %b | %b = %b, c_out = %b", a, b, s, c_out);
    end
endmodule
