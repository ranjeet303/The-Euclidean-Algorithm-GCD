`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2025 16:35:20
// Design Name: 
// Module Name: comparator
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


module comparator(
input [6:0] ta_out,tb_out,
output a_gt_b,a_lt_b,a_eq_b
    );
    
   assign a_gt_b = (ta_out>tb_out);
   assign a_lt_b = (ta_out<tb_out);
   assign a_eq_b = (ta_out==tb_out);
    
endmodule
