module demux_1to2tb;
     reg d,s;
     wire y1,y0;
     demux_1to2 uut(.d(d),
	        .s(s),
                .y1(y1),
                .y0(y0)
                );
     initial begin 
        d = 1; s = 0; #10;
        d = 1; s = 1; #10;
        d = 0; s = 0; #10;
        d = 0; s = 1; #10;
        #10 $finish;
     end 
     initial begin
	$monitor($time, " d=%b| s=%b | y1=%b | y0=%b", d,s, y1, y0); 
     end 
endmodule
