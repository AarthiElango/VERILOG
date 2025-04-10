module comparator_1(input a,b,output a_eqb,a_gtb,a_ltb);
     assign a_eqb= (a==b);
     assign a_gtb= (a>b);
     assign a_ltb= (a<b);
endmodule

