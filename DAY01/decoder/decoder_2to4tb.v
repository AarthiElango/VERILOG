module decoder_2to4tb;
    reg d1, d0;
    wire [3:0] q;

    decoder_2to4 uut (
        .d1(d1),
        .d0(d0),
        .q(q)
    );

    initial begin 
	$monitor($time, " | d1 = %b, d0 = %b | q = %b", d1, d0, q);

        d1 = 0; d0 = 0; #10;
        d1 = 0; d0 = 1; #10;
        d1 = 1; d0 = 0; #10;
        d1 = 1; d0 = 1; #10;

        #10 $finish;
    end
endmodule

