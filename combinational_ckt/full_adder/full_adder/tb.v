module tb();
    reg A_FA,B_FA,Cin_FA;
    wire S_FA,C_FA;
    full_adder fa1(.a(A_FA),.b(B_FA),.cin(Cin_FA),.s(S_FA),.cout(C_FA));

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tb);
    end
    
    initial begin
        $display("A B C | S C");
        $monitor("%b %b %b | %b %b", A_FA, B_FA, Cin_FA,S_FA, C_FA);
        A_FA = 0; B_FA = 0; Cin_FA = 0;#10;
        A_FA = 0; B_FA = 0; Cin_FA = 1;#10;
        A_FA = 0; B_FA = 1; Cin_FA = 0;#10;
        A_FA = 0; B_FA = 1; Cin_FA = 1;#10;
        A_FA = 1; B_FA = 0; Cin_FA = 0;#10;
        A_FA = 1; B_FA = 0; Cin_FA = 1;#10;
        A_FA = 1; B_FA = 1; Cin_FA = 0;#10;
        A_FA = 1; B_FA = 1; Cin_FA = 1;#10;
        $finish;
    end

endmodule