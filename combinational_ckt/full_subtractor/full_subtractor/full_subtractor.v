module full_subtractor(input x,y,z, output d,b);
    wire w1,w2,w3,w4,w5;
    xor x1(d,x,y,z);
    xor x2(w1,x,y);
    not n1(w2,w1);
    and a1(w5,w2,z);
    not n2(w3,x);
    and a2(w4,w3,y);
    or o1(b,w4,w5);
endmodule