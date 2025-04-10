module half_sub(input a,b,output borr,diff);
     wire x;
      xor(diff,a,b);
      not(x,a);
      and(borr,x,b);
      

endmodule
