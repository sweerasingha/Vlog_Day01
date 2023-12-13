module multiplexer_conditional_03(
    input [1:0] SEL,
    input [3:0] A,
    input [3:0] B,
    input [3:0] C,
    input [3:0] D,

    output reg [3:0] OUT
);
    assign OUT = SEL[1] ? (SEL[0] ? D:C) : (SEL[0] ? B:A);
    
endmodule
