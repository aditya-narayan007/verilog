module full_adder(input a,b,cin, output s,cout);
    wire r1,w1,w2;
    xor x1(r1,a,b);
    xor x2(s,r1,cin);
    and a1(w1,a,b);
    and a2(w2,r1,cin);
    or o1(cout,w1,w2);
    
endmodule


module ripple_carry_adder(input [3:0]a_rca ,input [3:0]b_rca,input cin, output [3:0]sum_rca ,output cout);
    wire w1,w2,w3;
    full_adder fa1(.a(a_rca[0]),.b(b_rca[0]),.cin(cin),.s(sum_rca[0]),.cout(w1));
    full_adder fa2(.a(a_rca[1]),.b(b_rca[1]),.cin(w1),.s(sum_rca[1]),.cout(w2));
    full_adder fa3(.a(a_rca[2]),.b(b_rca[2]),.cin(w2),.s(sum_rca[2]),.cout(w3));
    full_adder fa4(.a(a_rca[3]),.b(b_rca[3]),.cin(w3),.s(sum_rca[3]),.cout(cout));
endmodule

module BCD_adder(input [3:0]a_bcd ,input [3:0]b_bcd,input cin, output [3:0]sum_bcd ,output cout);
    wire cout_temp;
    wire [3:0]sum_temp;
    wire a1,a2,o1;
    wire [3:0] b_rca_2;
    ripple_carry_adder rca1(.a_rca(a_bcd),.b_rca(b_bcd),.cin(cin),.sum_rca(sum_temp),.cout(cout_temp));
    and a_1(a1,sum_temp[3],sum_temp[2]);
    and a_2(a2,sum_temp[1],sum_temp[3]);
    or o_1(o1,a1,a2);
    assign b_rca_2[0] = 0;
    assign b_rca_2[3] = 0;
    assign b_rca_2[2] = o1;
    assign b_rca_2[1] = o1;
    ripple_carry_adder rca2(.a_rca(sum_temp),.b_rca(b_rca_2),.cin(0),.sum_rca(sum_bcd),.cout(cout));
endmodule