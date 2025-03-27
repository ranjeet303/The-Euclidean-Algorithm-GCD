`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2025 21:02:42
// Design Name: 
// Module Name: reg_a
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


module reg_a(
input clk,rst,
input [6:0] ta_in,
input a_ld,
output [6:0] ta_out
    );
    reg [6:0] reg_a1;
    
    always @(posedge clk or posedge rst) begin
    if(rst)
    reg_a1 <= 0;
    else if(a_ld)
    reg_a1 <= ta_in;
    end
    assign ta_out = reg_a1;
endmodule
