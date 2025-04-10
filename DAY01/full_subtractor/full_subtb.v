module full_subtb;
  reg a,b,c;
  wire diff,borr;
  full_sub uut(
              .a(a),
              .b(b),
              .c(c),
              .diff(diff),
              .borr(borr)
  );
  initial begin 
     a=0;b=0;c=0;
     #10 a = 0; b = 0; c  = 1;
     #10 a = 0; b = 1; c  = 0;
     #10 a = 0; b = 1; c  = 1;
     #10 a = 1; b = 0; c  = 0;
     #10 a = 1; b = 0; c  = 1;
     #10 a = 1; b = 1; c  = 0;
     #10 a = 1; b = 1; c  = 1;
  end
  initial begin 
     $monitor($time, " | %b | %b | %b | %b | %b ", a, b, c, diff, borr);
  end
endmodule
