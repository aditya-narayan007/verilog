module half_subtractor(input a,b,output d,c);
    wire w1;
    xor x1(d,a,b);
    not n1(w1,a);
    and a1(c,w1,b);
endmodule