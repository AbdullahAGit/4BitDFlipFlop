`timescale 1ns/1ps

module registers_testbench();
    reg clk;
    reg [3:0] D;
    wire [3:0] Q;
    
    registers uut(
        .clk(clk),
        .D(D),
        .Q(Q)
    );
    
    always #1 clk = ~clk;

    initial begin
        //$dumpfile("registers.v");
        //$dumpvars(1);
        clk=0;
        #2 D = 4'b0000;
        #2 D = 4'b1010;
        #2 D = 4'b1111;
        #2 D = 4'b0011;
        $finish();
    end
    
endmodule
