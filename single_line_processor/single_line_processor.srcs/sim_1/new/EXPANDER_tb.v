`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/06/12 14:51:21
// Design Name: 
// Module Name: EXPANDER_tb
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


module EXPANDER_tb;
    reg [15:0] in; // 16-bit input
    wire [31:0] out; // 32-bit output

    // Instantiate the EXPANDER module
    EXPANDER uut (
        .in(in),
        .out(out)
    );

    initial begin
        // Test case 1: Positive number
        in = 16'h1234; // Input value
        #10; // Wait for output to stabilize
        $display("Input: %h, Output: %h", in, out); // Expected output: 00001234

        // Test case 2: Negative number
        in = 16'hFFFE; // Input value (sign-extended)
        #10; // Wait for output to stabilize
        $display("Input: %h, Output: %h", in, out); // Expected output: FFFFFFFE

        // Test case 3: Zero
        in = 16'h0000; // Input value
        #10; // Wait for output to stabilize
        $display("Input: %h, Output: %h", in, out); // Expected output: 00000000

        // Test case 4: All bits set
        in = 16'hFFFF; // Input value (sign-extended)
        #10; // Wait for output to stabilize
        $display("Input: %h, Output: %h", in, out); // Expected output: FFFFFFFF

        $finish; // End simulation
    end
endmodule
