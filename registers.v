module registers
    (
    input   clk,
    input [3:0]  D,
    output reg [3:0] Q
    );
    
    always @(posedge clk) // on positive edge of the clock set Q to D
        begin
            Q <= D;
        end
endmodule
