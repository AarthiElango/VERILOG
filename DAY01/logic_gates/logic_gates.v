module logic_gates(input a,b,output reg y_and,y_or,y_not,y_nand,y_nor,y_xor,y_xnor);
  always @(*) begin
     y_and=a&b;
     y_or=a|b;
     y_not=~a;
     y_nand=~(a&b);
     y_nor=~(a|b);
     y_xor=a^b;
     y_xnor=~(a^b);
  end 
endmodule;

