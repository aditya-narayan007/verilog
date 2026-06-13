module comparator2bit(input [1:0]A,input [1:0]B,output gt,eq,ls);
    wire A1bar,B1bar,A0bar,B0bar,w5,w6,w7,w8,w9,w10,w11,w12;
    not n1 (A1bar,A[1]);
    not n2 (A0bar,A[0]);
    not n3 (B1bar,B[1]);
    not n4 (B0bar,B[0]);

    and a1(w5,A[0],B1bar,B0bar);
    and a2(w6,A[1],B1bar);
    and a3(w7,A[1],A[0],B0bar);
    or o1(gt,w5,w6,w7);

    xnor xnr1(w8,A[0],A[1]);
    xnor xnr2(w9,B[0],B[1]);
    or o2(eq,w8,w9);

    and a4(w10,A1bar,B[0],A0bar);
    and a5(w11,B[1],A1bar);
    and a6(w12,B[1],B[0],A1bar);
    or o3(ls,w5,w6,w7);
endmodule