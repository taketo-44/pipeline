`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/06/11 18:10:17
// Design Name: 
// Module Name: REGISTER_tb
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


module REGISTER_tb;
    reg clk;
    reg rst;
    reg [4:0] read_reg1;
    reg [4:0] read_reg2;
    reg [4:0] write_reg;
    reg [31:0] write_data;
    reg reg_write;
    wire [31:0] read_data1;
    wire [31:0] read_data2;
    // Instantiate the REGISTER module
    REGISTER uut (
        .clk(clk),
        .rst(rst),
        .read_reg1(read_reg1),
        .read_reg2(read_reg2),
        .write_reg(write_reg),
        .write_data(write_data),
        .reg_write(reg_write),
        .read_data1(read_data1),
        .read_data2(read_data2)
    );
    initial begin
        // Initialize inputs
        clk = 0;
        rst = 1;
        read_reg1 = 5'b00000; // Register 0
        read_reg2 = 5'b00001; // Register 1
        write_reg = 5'b00010; // Register 2
        write_data = 32'h00000000; // Initial data
        reg_write = 0;

        // Release reset after some time
        #100 rst = 0;

        // Write data to register
        #100
        write_data = 32'h12345678; // Data to write
        reg_write = 1; // Enable write
        #100
        clk = ~clk; // Toggle clock

        // Read data from registers
        #100 
        read_reg1 = 5'b00010; // Read from register 2
        read_reg2 = 5'b00000; // Read from register 0
        reg_write = 0; // Disable write

        #100
        clk = ~clk; // Toggle clock

        // Display results
        $display("Read Data1: %h, Read Data2: %h", read_data1, read_data2);
        
        $finish;
    end
endmodule
