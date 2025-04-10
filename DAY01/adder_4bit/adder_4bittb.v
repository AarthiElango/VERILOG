module adder_4bittb;
    reg [3:0] a, b;
   // reg cin
    wire [3:0] sum;
    wire cout;

    adder_4bit uut (
        .a(a),
        .b(b),
       // .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        $monitor($time, " | a = %b | b = %b  | sum = %b | cout = %b", a, b, sum, cout);
       
           a = 4'b0000; b = 4'b0000;
      #10  a = 4'b0001; b = 4'b0010; 
      #10  a = 4'b0101; b = 4'b0011; 
      #10  a = 4'b1111; b = 4'b1111; 
      #10  a = 4'b1111; b = 4'b1111; 
      #10  $finish;
    end
endmodule
