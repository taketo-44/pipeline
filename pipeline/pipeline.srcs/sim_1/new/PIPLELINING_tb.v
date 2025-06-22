`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/06/20 18:27:18
// Design Name: 
// Module Name: PIPLELINING_tb
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


module PIPLELINING_tb;
    reg clk = 1, rst = 0;

    PIPELINING pipeline(
        .clk(clk),
        .rst(rst)
    );
    initial begin
        #150
        rst <= 1;
        #10000000
        $finish;
    end

    always #50 begin
        clk <= ~clk;
    end
endmodule
