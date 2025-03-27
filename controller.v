module controller(
input clk,rst,go,
input a_gt_b, a_lt_b, a_eq_b,
output reg done,
 output reg a_ld,b_ld,a_sel,b_sel,output_en
);

  reg[2:0] ps,ns;
  
parameter s0=3'b000;
parameter s1=3'b001;
parameter s2=3'b010;
parameter s3=3'b011;
parameter s4=3'b100;
parameter s5=3'b101;
parameter s6=3'b110;
parameter s7=3'b111;

always @(posedge clk or posedge rst  )begin
if (rst) 
ps <= s0;
else 
ps <= ns;
end

always @(go or a_gt_b or a_lt_b or a_eq_b or ps) begin
case(ps)
s0: begin
if (go==1'b0)
ns = s0;
else ns=s1;
end
s1: ns=s2;
s2: ns=s3;
s3:begin
if (a_gt_b) 
ns=s4;
else if(a_lt_b)
ns=s5;
else if(a_eq_b)
ns=s7;
else 
ns=s7;
end
s4: ns= s6;
s5: ns= s6;
s6: ns= s3;
s7: ns= s0;
default : ns=s0;
endcase 
end
always @(ps) begin
case(ps)
s0 : begin
a_sel = 1'b0;
b_sel = 1'b0;
a_ld = 1'b0;
b_ld = 1'b0;
done = 1'b0;
output_en =1'b0;
end

s1 : begin
a_sel = 1'b1;
b_sel = 1'b1;
a_ld = 1'b1;
b_ld = 1'b1;
done = 1'b0;
output_en =1'b0;
end

s2 : begin
a_sel = 1'b0;
b_sel = 1'b0;
a_ld = 1'b0;
b_ld = 1'b0;
done = 1'b0;
output_en =1'b0;
end

s3 : begin
a_sel = 1'b0;
b_sel = 1'b0;
a_ld = 1'b0;
b_ld = 1'b0;
done = 1'b0;
output_en =1'b0;
end

s4 : begin
a_sel = 1'b0;
b_sel = 1'b0;
a_ld = 1'b1;
b_ld = 1'b0;
done = 1'b0;
output_en =1'b0;
end

s5 : begin
a_sel = 1'b0;
b_sel = 1'b0;
a_ld = 1'b0;
b_ld = 1'b1;
done = 1'b0;
output_en =1'b0;
end

s6 : begin
a_sel = 1'b0;
b_sel = 1'b0;
a_ld = 1'b0;
b_ld = 1'b0;
done = 1'b0;
output_en =1'b0;
end

s7 : begin
a_sel = 1'b0;
b_sel = 1'b0;
a_ld = 1'b0;
b_ld = 1'b0;
done = 1'b1;
output_en =1'b1;
end
default: begin 
a_sel = 1'b0;
b_sel = 1'b0;
a_ld = 1'b0;
b_ld = 1'b0;
done = 1'b0;
output_en =1'b0;
end

endcase
end
endmodule