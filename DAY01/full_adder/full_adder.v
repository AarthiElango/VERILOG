module full_adder(input a,b,c,output sum,carry);
    wire s1,c1,c2,c3;
    xor(s1,a,b);
    xor(sum,s1,c);
    and(c1,a,b);
    and(c2,b,c);
    and(c3,a,c);
    or(carry,c1,c2,c3);

endmodule
