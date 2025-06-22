`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/06/09 17:08:13
// Design Name: 
// Module Name: FA32_tb
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


module FA32_tb;
    reg [31:0] a, b;
    wire [31:0] s;

    // Instantiate the FA32 module
    FA32 uut (.a(a), .b(b), .s(s));
    initial begin
        // Initialize inputs
        a = 32'h00000000; // 0
        b = 32'h00000000; // 0
        #10; // Wait for 10 time units
        a = 32'hFFFFFFFF; // -1
        b = 32'h00000001; // 1
        #10; // Wait for 10 time units
        a = 32'hFFFFFFFF; // -1
        b = 32'hFFFFFFFF; // -1
        #10; // Wait for 10 time units
        a = 32'h00000000; // 1
        b = 32'h00000004; // 1
        #10; // Wait for 10 time units
        $finish;
    end

    always @(s) begin
        $display("a = %d, b = %d, s = %d", a, b, s);
    end
endmodule
