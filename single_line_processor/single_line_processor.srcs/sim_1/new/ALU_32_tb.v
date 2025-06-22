`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/06/10 18:54:20
// Design Name: 
// Module Name: ALU_32_tb
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


module ALU_32_tb;
    reg [31:0] a, b; // 32-bit inputs
    reg [3:0] op; // Operation select
    wire [31:0] s; // 32-bit output
    wire zero_flag; // Zero flag output

    // Instantiate the ALU_32 module
    ALU_32 alu (
        .a(a),
        .b(b),
        .op(op),
        .s(s),
        .zero_flag(zero_flag)
    );

    initial begin
        // Test case 1: AND
        a = 32'h00000001; // 1
        b = 32'h00000001; // 1
        op = 4'b0000; // AND operation
        #100; // Wait for 10 time units
        $display("Bitwise AND: %h & %h = %h", a, b, s);

        // Test case 2: OR
        a = 32'h00000002; // 2
        b = 32'h00000001; // 1
        op = 4'b0001; // OR operation
        #100;
        $display("Bitwise OR: %h | %h = %h", a, b, s);

        // Test case 3: ADD operation
        a = 32'h00000001; // 1
        b = 32'h0F0F0F0E; // Some bits set
        op = 4'b0010; // ADD operation
        #100;
        $display("Addition: %h + %h = %h", a, b, s);

        // Test case 4: Subtraction
        a = 32'h00000002; // 2
        b = 32'h00000001; // 1
        op = 4'b0110; // SUB operation
        #100;
        $display("Subtraction: %h - %h = %h", a, b, s);

        // Test case 5: ADD operation with carry
        a = 32'hFFFFFFFF; // Max value
        b = 32'h00000001; // 1
        op = 4'b0010; // ADD operation
        #100;
        $display("Addition with carry: %h + %h = %h", a, b, s);

        // Test case 6: Set Less Than
        a = 32'h00000001; // 1
        b = 32'h00000002; // 2
        op = 4'b0111; // SLT operation
        #100;
        $display("Set Less Than: %h < %h ? %h", a, b, s);
    end
endmodule
