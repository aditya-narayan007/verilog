`timescale 1ns/1ps
module tb();
    reg A,B,C;
    wire c,d;
    full_subtractor fs1(.x(A),.y(B),.z(C),.d(d),.c(c));
    initial begin
        $display("X Y Z | C D");
        $monitor("%b %b %b | %b %b",A,B,C,c,d);
        A = 0; B = 0; C = 0;#10;
        A = 0; B = 0; C = 1;#10;
        A = 0; B = 1; C = 0;#10;
        A = 0; B = 1; C = 1;#10;
        A = 1; B = 0; C = 0;#10;
        A = 1; B = 0; C = 1;#10;
        A = 1; B = 1; C = 0;#10;
        A = 1; B = 1; C = 1;#10;
        $finish;
    end
endmodule