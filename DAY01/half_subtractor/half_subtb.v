module half_subtb;
    wire borr,diff;
    reg a,b;
    half_sub uut(.a(a),
	         .b(b),
		 .borr(borr),
		 .diff(diff)
    );
    initial begin 
          a=0;b=0;
      #10 a=0;b=1;
      #10 a=1;b=0;
      #10 a=1;b=1;

      #50 $finish;
    end
    initial begin
       $monitor($time,"|  difference=%b  |   borrow=%b",diff,borr);
    end
endmodule
