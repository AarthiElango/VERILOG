module mux_2to1( 
    input a,b,s,
    output y 
               );
    assign y= ((~s&a) | (s&b));
    /*wire x,w1,w2;
    not(x,s);
    and(w1,x,a);
    and(w2,s,b);
    or(y,w1,w2);
    */
endmodule
