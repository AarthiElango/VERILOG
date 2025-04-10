module logic_gatestb;
   reg a,b;
   wire y_and, y_or, y_not, y_nand, y_nor, y_xor, y_xnor;
   logic_gates uut(.a(a),
                   .b(b),
                  .y_and(y_and),.y_or(y_or),.y_not(y_not),.y_nand(y_nand),.y_nor(y_nor),.y_xor(y_xor),.y_xnor(y_xnor) );

   initial begin
      a=0;b=0;
   #10   a=0;b=1;
   #10   a=1;b=0;
   #10   a=1;b=1;
     end
     initial begin 
	     $monitor($time,"| and=%b, |or=%b, |not=%b, |nand=%b,|nor=%b,|xor=%b,|xnor=%b ",y_and,y_or,y_not,y_nand,y_nor,y_xor,y_xnor);
     end

     endmodule 

