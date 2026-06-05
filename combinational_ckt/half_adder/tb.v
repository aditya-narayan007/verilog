`timescale 1ns/1ps
module tb();
    reg A,B;
    wire S,C;
    half_adder ha1 (.A(A),.B(B),.S(S),.C(C));

    initial begin
        $display("A B | S C");
        $monitor("%b %b | %b %b", A, B, S, C);
        A = 0; B = 0;#10;
        A = 0; B = 1;#10;
        A = 1; B = 0;#10;
        A = 1; B = 1;#10;
        $finish;
    end

endmodule