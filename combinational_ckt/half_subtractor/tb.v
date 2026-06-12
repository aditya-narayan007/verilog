`timescale 1ns/1ps
module tb();
    reg A,B;
    wire C,D;
    half_subtractor hs1(.a(A),.b(B),.c(C),.d(D));

    initial begin
        $display("A B | C D");
        $monitor("%b %b | %b %b",A,B,C,D);
        A = 0; B = 0;#10;
        A = 0; B = 1;#10;
        A = 1; B = 0;#10;
        A = 1; B = 1;#10;
        $finish;
    end
endmodule