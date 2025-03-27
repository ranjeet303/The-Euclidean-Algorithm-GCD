module subtractor(
input wire [6:0] P,Q,
output wire [6:0] R
); 

assign R = P - Q ;

endmodule