module full_addertb;
   reg a,b,c;
   wire sum,carry;
   full_adder uut(
	   .a(a),
	   .b(b),
	   .c(c),
	   .sum(sum),
	   .carry(carry)
   );
   initial begin
          a = 0; b = 0; c = 0;
     #5;  a = 0; b = 0; c = 1; 
     #5;  a = 0; b = 1; c = 0; 
     #5;  a = 0; b = 1; c = 1; 
     #5;  a = 1; b = 0; c = 0;
     #5;  a = 1; b = 0; c = 1; 
     #5;  a = 1; b = 1; c = 0;
     #5;  a = 1; b = 1; c = 1; 
     #5;  $finish;
   end 
   initial begin
     $monitor("time=%0t| a=%b b=%b | sum=%b | carry=%b ",$time,a,b,sum,carry);
   end
endmodule
