`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2025 21:04:39
// Design Name: 
// Module Name: mux_1
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


module mux_1(
input [6:0] data_sel_1,
input  [6:0] t1,
input a_sel,
output [6:0] ta_in
    );
    
    assign ta_in = a_sel ? data_sel_1 : t1;
    
endmodule
