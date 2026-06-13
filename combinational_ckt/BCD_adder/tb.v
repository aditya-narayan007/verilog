`timescale 1ns/1ps

module tb_BCD_adder;

    reg [3:0] a_bcd, b_bcd;
    reg cin;
    wire [3:0] sum_bcd;
    wire cout;

    // Instantiate the DUT
    BCD_adder dut (
        .a_bcd(a_bcd),
        .b_bcd(b_bcd),
        .cin(cin),
        .sum_bcd(sum_bcd),
        .cout(cout)
    );

    initial begin
        $display(" A    B   Cin | Cout Sum");
        $display("------------------------");

        a_bcd = 4'd0; b_bcd = 4'd0; cin = 0; #10;
        $display("%2d + %2d   %b  |  %b    %d", a_bcd, b_bcd, cin, cout, sum_bcd);

        a_bcd = 4'd3; b_bcd = 4'd4; cin = 0; #10;
        $display("%2d + %2d   %b  |  %b    %d", a_bcd, b_bcd, cin, cout, sum_bcd);

        a_bcd = 4'd5; b_bcd = 4'd4; cin = 0; #10;
        $display("%2d + %2d   %b  |  %b    %d", a_bcd, b_bcd, cin, cout, sum_bcd);

        a_bcd = 4'd7; b_bcd = 4'd5; cin = 0; #10;
        $display("%2d + %2d   %b  |  %b    %d", a_bcd, b_bcd, cin, cout, sum_bcd);

        a_bcd = 4'd8; b_bcd = 4'd8; cin = 0; #10;
        $display("%2d + %2d   %b  |  %b    %d", a_bcd, b_bcd, cin, cout, sum_bcd);

        a_bcd = 4'd9; b_bcd = 4'd9; cin = 0; #10;
        $display("%2d + %2d   %b  |  %b    %d", a_bcd, b_bcd, cin, cout, sum_bcd);

        a_bcd = 4'd9; b_bcd = 4'd9; cin = 1; #10;
        $display("%2d + %2d   %b  |  %b    %d", a_bcd, b_bcd, cin, cout, sum_bcd);

        $finish;
    end

endmodule