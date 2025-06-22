`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/06/11 17:27:36
// Design Name: 
// Module Name: SHIFT_2LEFT_tb
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


module SHIFT_2LEFT_tb;
    reg [31:0] a; // Input signal
    wire [31:0] b; // Output signal

    // Instantiate the SHIFT_2LEFT module
    SHIFT_2LEFT uut (
        .a(a),
        .b(b)
    );

    initial begin
        // Initialize input
        a = 32'hFFFFFFFFF; // Example input value
        #100; // Wait for 10 time units
        $display("Input a = %b, Output b = %b", a, b);
        a = 32'h00000001; // Another example input value
        #100; // Wait for 10 time units
        $display("Input a = %b, Output b = %b", a, b);
        a = 32'h00000000; // Test with zero
        #100; // Wait for 10 time units
        $display("Input a = %b, Output b = %b", a, b);
    end
endmodule
