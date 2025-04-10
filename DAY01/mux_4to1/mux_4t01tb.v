module mux_4t01tb;
     reg s1,s0;
     wire [1:0] y;
     mux_4t01 uut(
                  .s1(s1),
                  .s0(s0),
                  .y(y)
                 );
     initial begin 
        s1 = 0; s0 = 0; #10;
        s1 = 0; s0 = 1; #10;
        s1 = 1; s0 = 0; #10;
        s1 = 1; s0 = 1; #10;
        $finish;
     end 
     initial begin
	 $monitor($time, " | s1=%b | s0=%b | y=%b", s1, s0, y);
 
     end 
endmodule 
