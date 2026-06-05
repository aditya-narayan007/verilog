module full_adder(input a,b,cin, output s,cout);
    wire r1,w1,w2;
    xor x1(r1,a,b);
    xor x2(s,r1,cin);
    and a1(w1,a,b);
    and a2(w2,r1,cin);
    or o1(cout,w1,w2);
    
endmodule