module mux_2(
input [6:0] data_sel_2,
input  [6:0] t2,
input b_sel,
output [6:0] tb_in
    );
    
    assign tb_in = b_sel ? data_sel_2 : t2;
    
endmodule
