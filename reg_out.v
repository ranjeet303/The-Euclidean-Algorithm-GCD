module reg_out(
input clk,rst,
input [6:0] ta_out,
input output_en,
output [6:0] out
    );
    reg [6:0] reg_out1;
    
    always @(posedge clk or posedge rst) begin
    if(rst)
    reg_out1 <= 0;
    else if (output_en)
    reg_out1 <= ta_out;
    end
    assign out = reg_out1;
endmodule
