`timescale 1ns/1ps
module tb();
    reg a,b,c;
    wire B,D;
    full_subtractor fs1(.x(a),.y(b),.z(c),.d(D),.b(B));
    initial begin
        $display("X Y Z | B D");
        $monitor("%b %b %b | %b %b",a,b,c,B,D);
        a = 0; b = 0; c = 0;#10;
        a = 0; b = 0; c = 1;#10;
        a = 0; b = 1; c = 0;#10;
        a = 0; b = 1; c = 1;#10;
        a = 1; b = 0; c = 0;#10;
        a = 1; b = 0; c = 1;#10;
        a = 1; b = 1; c = 0;#10;
        a = 1; b = 1; c = 1;#10;
        $finish;
    end
endmodule