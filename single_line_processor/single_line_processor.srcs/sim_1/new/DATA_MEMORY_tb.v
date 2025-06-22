`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/06/11 18:53:06
// Design Name: 
// Module Name: DATA_MEMORY_tb
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


module DATA_MEMORY_tb;
    reg clk, rst, mem_write, mem_read;
    reg [31:0] addr, write_data; // 32-bit address input
    wire [31:0] read_data; // 32-bit data read from memory

    // Instantiate the DATA_MEMORY module
    DATA_MEMORY uut (
        .clk(clk),
        .rst(rst),
        .addr(addr),
        .write_data(write_data),
        .mem_write(mem_write),
        .mem_read(mem_read),
        .read_data(read_data)
    );
    initial begin
        // Initialize inputs
        clk = 0;
        rst = 1;
        mem_write = 0;
        mem_read = 0;
        addr = 32'b0; // Start with address 0
        write_data = 32'b0; // Initial data

        // Release reset after some time
        #100 rst = 0;

        // Write data to memory
        #100;
        addr = 32'b
        00000000; // Address 0
        write_data = 32'h12345678; // Data to write
        mem_write = 1; // Enable memory write
        #10 mem_write = 0; // Disable memory write
        // Read data from memory
        #100;
        addr = 32'b00000000; // Address 0
        mem_read = 1; // Enable memory read
        #10 mem_read = 0; // Disable memory read
        // Check read data
        if (read_data !== 32'h12345678) begin
            $display("Error: Expected 0x12345678, got %h", read_data);
        end else begin
            $display("Read data from address 0: %h", read_data);
        end
    end

endmodule