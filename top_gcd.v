module top_gcd(
input clk,rst,go,
input [6:0] data_sel_1, data_sel_2,
output [6:0] out,
output done
    );
    
    wire a_gt_b,a_eq_b,a_lt_b;
    
    
 datapath dapth1(.clk(clk),.rst(rst),.data_sel_1(data_sel_1),.data_sel_2(data_sel_2),.a_gt_b(a_gt_b),.a_eq_b(a_eq_b),.a_lt_b(a_lt_b),.out(out),.a_ld(a_ld),.b_ld(b_ld),.a_sel(a_sel),.b_sel(b_sel),.output_en(output_en) );
 controller ctrl(.clk(clk),.rst(rst),.a_gt_b(a_gt_b),.a_eq_b(a_eq_b),.a_lt_b(a_lt_b),.done(done),.a_ld(a_ld),.b_ld(b_ld),.a_sel(a_sel),.b_sel(b_sel),.output_en(output_en),.go(go));   
    
endmodule
