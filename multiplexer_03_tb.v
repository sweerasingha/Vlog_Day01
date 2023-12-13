`timescale 1 ps/1 ps

module multiplexer_03_tb();
    reg [1:0] sel;
    reg [3:0] a;
    reg [3:0] b;
    reg [3:0] c;
    reg [3:0] d;

    wire [3:0] out;

    multiplexer_conditional_03 dut (.A(a), .B(b), .C(c), .D(d), .SEL(sel), .OUT(out));

    initial begin
        a <= 4'b0001;
        b <= 4'b0010;
        c <= 4'b0100;
        d <= 4'b1000;

        #10 sel <= 2'b00;
        #10 sel <= 2'b01;
        #10 sel <= 2'b10;
        #10 sel <= 2'b11;
        #10 sel <= 2'b00;
    
    end
endmodule

