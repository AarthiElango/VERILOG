module encoder_4to2tb;
    reg [3:0] d;
    wire [1:0] q;

    encoder_4to2 uut (
        .d(d),
        .q(q)
    );

    initial begin
        d = 4'b0000; #10;
        d = 4'b0001; #10;
        d = 4'b0010; #10;
        d = 4'b0011; #10;
        d = 4'b0100; #10;
        d = 4'b0101; #10;
        d = 4'b0110; #10;
        d = 4'b0111; #10;
        d = 4'b1000; #10;
        d = 4'b1001; #10;
        d = 4'b1010; #10;
        d = 4'b1011; #10;
        d = 4'b1100; #10;
        d = 4'b1101; #10;
        d = 4'b1110; #10;
        d = 4'b1111; #10;

        #10 $finish;
    end
    initial begin 
	 $monitor($time, " | d = %b | q = %b", d, q);
    end 
endmodule
