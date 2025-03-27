module reg_b(
input clk,rst,
input [6:0] tb_in,
input b_ld,
output [6:0] tb_out
    );
    reg [6:0] reg_b1;
    
    always @(posedge clk or posedge rst) begin
    if(rst)
    reg_b1 <= 0;
    else if(b_ld)
    reg_b1 <= tb_in;
    end
    assign tb_out = reg_b1;
endmodule
