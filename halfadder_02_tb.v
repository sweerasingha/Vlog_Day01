`timescale 1ns/1ns

module halfadder_02_tb();
    reg a,b;
    wire sum,c_out;

    halfadder_02 dut (.A(a), .B(b),.SUM(sum), .C_OUT(c_out));

    initial begin
        a=0; b=0;

        #10 a=0; b=0;
        #10 a=0; b=1;
        #10 a=1; b=0;
        #10 a=1; b=1;
        #10 a=1; b=0;
    end
endmodule

