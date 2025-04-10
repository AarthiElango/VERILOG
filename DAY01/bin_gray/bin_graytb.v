module bin_graytb;
    reg [3:0] b;
    wire [3:0] g;

    bin_gray uut (
        .b(b),
        .g(g)
    );

    initial begin
        $monitor("%0t | b = %04b | g = %04b", $time, b, g);

        b = 4'b0000; #5;
        b = 4'b0001; #5;
        b = 4'b0010; #5;
        b = 4'b0011; #5;
        b = 4'b0100; #5;
        b = 4'b0101; #5;
        b = 4'b0110; #5;
        b = 4'b0111; #5;
        b = 4'b1000; #5;
        b = 4'b1001; #5;
        b = 4'b1010; #5;
        b = 4'b1011; #5;
        b = 4'b1100; #5;
        b = 4'b1101; #5;
        b = 4'b1110; #5;
        b = 4'b1111; #5;

        $finish;
    end
endmodule

