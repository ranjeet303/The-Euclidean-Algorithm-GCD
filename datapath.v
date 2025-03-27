module datapath(
input clk,rst,
input [6:0] data_sel_1 , data_sel_2,
input a_sel,b_sel, a_ld,b_ld, output_en,
output a_gt_b,a_eq_b,a_lt_b,
output [6:0] out
);

wire [6:0] ta_out,tb_out,t1,t2,ta_in,tb_in;

 subtractor  S1(.P(ta_out),.Q(tb_out),.R(t1));
 subtractor  S2(.P(tb_out),.Q(ta_out),.R(t2));
 
 mux_1 m1(.data_sel_1(data_sel_1), .t1(t1),.a_sel(a_sel),.ta_in(ta_in));
 mux_2 m2(.data_sel_2(data_sel_2), .t2(t2),.b_sel(b_sel),.tb_in(tb_in));

reg_a RA(.clk(clk),.rst(rst),.ta_in(ta_in),.a_ld(a_ld),.ta_out(ta_out));
reg_b RB(.clk(clk),.rst(rst),.tb_in(tb_in),.b_ld(b_ld),.tb_out(tb_out));
reg_out ROUT(.clk(clk),.rst(rst),.ta_out(ta_out),.output_en(output_en),.out(out));

comparator comp(.ta_out(ta_out),.tb_out(tb_out),.a_gt_b(a_gt_b),.a_lt_b(a_lt_b),.a_eq_b(a_eq_b));
endmodule