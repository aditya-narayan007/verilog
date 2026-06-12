module half_subtractor(input a,b,output d,c);
    wire w1;
    xor x1(d,a,b);
    not n1(w1,a);
    and a1(c,w1,b);
endmodule

module full_subtractor(input x,y,z,output d,c);
    wire w1,w2,w3;
    half_subtractor hs1(.a(x),.b(y),.c(w1),.d(w2));
    half_subtractor hs2(.a(w2),.b(z),.c(w3),.d(d));
    or o1(c,w1,w3);
endmodule