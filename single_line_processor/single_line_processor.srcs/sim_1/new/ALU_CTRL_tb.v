`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/06/11 17:12:38
// Design Name: 
// Module Name: ALU_CTRL_tb
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


module ALU_CTRL_tb;
    reg [5:0] funct; // Function code input
    reg [1:0] ALUOp; // ALU operation code input
    wire [3:0] ALUCtrl; // ALU control output

    // Instantiate the ALU_CTRL module
    ALU_CTRL uut (
        .funct(funct),
        .ALUOp(ALUOp),
        .ALUCtrl(ALUCtrl)
    );

    initial begin
        // Test case 1: ADD operation
        funct = 6'b100000; // ADD function code
        ALUOp = 2'b00; // ALUOp for ADD
        #100; // Wait for 10 time units

        // Test case 2: SUB operation
        funct = 6'b100010; // SUB function code
        ALUOp = 2'b00; // ALUOp for SUB
        #100; // Wait for 10 time units

        // Test case 3: AND operation
        funct = 6'b100100; // AND function code
        ALUOp = 2'b00; // ALUOp for AND
        #100; // Wait for 10 time units

        // Test case 4: OR operation
        funct = 6'b100101; // OR function code
        ALUOp = 2'b00; // ALUOp for OR
        #100; // Wait for 10 time units

        $finish;
    end

    always @(ALUCtrl) begin
        $display("funct = %b, ALUOp = %b, ALUCtrl = %b", funct, ALUOp, ALUCtrl);
    end
endmodule
