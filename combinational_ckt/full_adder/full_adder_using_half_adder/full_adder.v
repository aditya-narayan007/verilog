module half_adder(input A,B, output S,C);
    xor x1(S,A,B);
    and a1(C,A,B);
endmodule

module full_adder(input A,B,C_in,output S,C);
    wire W1,W2,W3;
    half_adder ha1(.A(A),.B(B),.S(W1),.C(W2));
    half_adder ha2(.A(W1),.B(C_in),.S(S),.C(W3));
    or o1(C,W2,W3);
endmodule