`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/06/12 14:46:48
// Design Name: 
// Module Name: CTRL_tb
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


module CTRL_tb;
    reg clk;
    reg [5:0] op;
    
    wire reg_dst;
    wire alu_src;
    wire mem_to_reg;
    wire reg_write;
    wire mem_read;
    wire mem_write;
    wire branch;
    wire [1:0] alu_op;

    // Instantiate the CTRL module
    CTRL uut (
        .clk(clk),
        .op(op),
        .reg_dst(reg_dst),
        .alu_src(alu_src),
        .mem_to_reg(mem_to_reg),
        .reg_write(reg_write),
        .mem_read(mem_read),
        .mem_write(mem_write),
        .branch(branch),
        .alu_op(alu_op)
    );

    initial begin
        // Initialize inputs
        clk = 0;
        op = 6'b000000; // R-type instruction

        // Apply clock signal
        forever #10 clk = ~clk; // Toggle clock every 10 time units
    end

    initial begin
        // Test R-type instruction
        #20;
        
        // Test LW instruction
        op = 6'b100011; 
        #20;

        // Test SW instruction
        op = 6'b101011; 
        #20;

        // Test BEQ instruction
        op = 6'b000100; 
        #20;

        // End simulation
        $finish;
    end
endmodule
