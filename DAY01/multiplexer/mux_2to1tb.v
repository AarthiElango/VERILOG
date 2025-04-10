module mux_2to1tb;
   reg a,b,s;
   wire y;
   mux_2to1 uut(
	   .a(a),
	   .b(b),
	   .s(s),
	   .y(y)
   );    
   initial begin 
        a = 0; b = 0; s = 0;
    #10 a = 0; b = 0; s = 1;
    #10 a = 1; b = 0; s = 0;
    #10 a = 1; b = 0; s = 1;
    #10 a = 0; b = 1; s = 0;
    #10 a = 0; b = 1; s = 1;
    #10 a = 1; b = 1; s = 0;
    #10 a = 1; b = 1; s = 1;

    #10 $finish;
	
   end 
   initial begin 
      $monitor($time, " | %b | %b | %b | %b", a, b, s, y);
   end 
endmodule   
