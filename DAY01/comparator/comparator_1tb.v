module comparator_1tb;
    reg a,b;
    wire a_eqb,a_gtb,a_ltb;
    comparator_1 uut(.a(a),
                    .b(b),
                    .a_eqb(a_eqb),
                    .a_gtb(a_gtb),
                    .a_ltb(a_ltb)
                    );
   initial begin 
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        #10 $finish;
   end 
   initial begin 
         $monitor($time, " | a=%b | b=%b | a_eqb=%b | a_gtb=%b | a_ltb=%b", a, b, a_eqb, a_gtb, a_ltb);
   end 
endmodule 
