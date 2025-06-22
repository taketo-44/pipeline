`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/06/12 15:36:00
// Design Name: 
// Module Name: SCP_tb
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


module SCP_tb;

    reg clk = 1, rst = 0;

    SCP scp(
        .clk(clk),
        .rst(rst)
    );
    initial begin
        #150
        rst <= 1;
        #100000
        $finish;
    end

    always #50 begin
        clk <= ~clk;
    end
endmodule
