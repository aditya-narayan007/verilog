module full_adder(input a,b,cin, output s,cout);
    wire r1,w1,w2;
    xor x1(r1,a,b);
    xor x2(s,r1,cin);
    and a1(w1,a,b);
    and a2(w2,r1,cin);
    or o1(cout,w1,w2);
    
endmodule


module ripple_carry_adder(input [3:0]a_rca , [3:0]b_rca, cin, output [3:0]sum_rca , cout);
    wire w1,w2,w3;
    full_adder fa1(.a(a_rca[0]),.b(b_rca[0]),.cin(cin),.s(sum_rca[0]),.cout(w1));
    full_adder fa2(.a(a_rca[1]),.b(b_rca[1]),.cin(w1),.s(sum_rca[1]),.cout(w2));
    full_adder fa3(.a(a_rca[2]),.b(b_rca[2]),.cin(w2),.s(sum_rca[2]),.cout(w3));
    full_adder fa4(.a(a_rca[3]),.b(b_rca[3]),.cin(w3),.s(sum_rca[3]),.cout(cout));
endmodule