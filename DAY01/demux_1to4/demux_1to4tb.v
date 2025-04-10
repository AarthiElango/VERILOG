module demux_1to4tb;
    reg d, s1, s0;
    wire [3:0] y;
    demux_1to4 uut (
        .d(d),
        .s1(s1),
        .s0(s0),
        .y(y)
    );
    initial begin 
        d = 0; s1 = 0; s0 = 0; #10;
        d = 0; s1 = 0; s0 = 1; #10;
        d = 0; s1 = 1; s0 = 0; #10;
        d = 0; s1 = 1; s0 = 1; #10;

        d = 1; s1 = 0; s0 = 0; #10;
        d = 1; s1 = 0; s0 = 1; #10;
        d = 1; s1 = 1; s0 = 0; #10;
        d = 1; s1 = 1; s0 = 1; #10;

        #10 $finish;
     end
     initial begin
	$monitor($time, " | d=%b | s1=%b | s0=%b | y=%b", d, s1, s0, y);

     end 
endmodule

