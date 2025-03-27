`timescale 1ns / 1ps

module top_gcd_tb;
    
    // Inputs
    reg clk, rst, go;
    reg [6:0] data_sel_1, data_sel_2;
    
    // Outputs
    wire [6:0] out;
    wire done;
    
    // Instantiate the DUT (Device Under Test)
    top_gcd uut (
        .clk(clk), 
        .rst(rst), 
        .go(go), 
        .data_sel_1(data_sel_1), 
        .data_sel_2(data_sel_2), 
        .out(out), 
        .done(done)
    );
    
    // Clock generation
    always #5 clk = ~clk; // 10ns period clock
    
    initial begin
        // Initialize Inputs
        clk = 0;
        rst = 1;
        go = 0;
        data_sel_1 = 0;
        data_sel_2 = 0;
        
        // Reset pulse
        #10 rst = 0;
        
        // Test Case 1: Compute GCD of 35 and 21
        #10 data_sel_1 = 35;
        data_sel_2 = 21;
        go = 1;
        
        #10 go = 0; // Deassert go after one cycle
        
        // Wait for done signal
        wait(done);
        $display("GCD of 35 and 21 is: %d", out);
        
        // Test Case 2: Compute GCD of 56 and 98
        #20 data_sel_1 = 56;
        data_sel_2 = 98;
        go = 1;
        
        #10 go = 0;
        
        wait(done);
        $display("GCD of 56 and 98 is: %d", out);
        
        // End simulation
        #50 $finish;
    end
    
endmodule
