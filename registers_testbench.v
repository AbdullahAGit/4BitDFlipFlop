`timescale 1ns/1ps // set timescale; 1 nanosecond unit and 1 picosecond precision 

module registers_testbench();
    reg clk;    
    reg [3:0] D;
    wire [3:0] Q;
    
    registers uut( //unit under test
        .clk(clk),
        .D(D),
        .Q(Q)
    );
    
    always #1 clk = ~clk; //every 1 nanosecond set toggle clk

    initial begin
        //$dumpfile("registers.v"); not needed if you dont need to use the files afterwards (i used the simulation model inside vivado)
        //$dumpvars(1);
        clk=0;            //at the start clk is 0
        #2 D = 4'b0000;   // after 2 nanoseconds set D to 0000 in binary which will set Q to 0000 on the next positive edge on the CLK signal
        #2 D = 4'b1010;
        #2 D = 4'b1111;
        #2 D = 4'b0011;
        $finish();        // finish simulation
    end
    
endmodule
