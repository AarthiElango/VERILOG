module encoder_4to2(input [3:0]d,output [1:0]q);
     
      assign q[0]= (d[1] | d[3]);
      assign q[1]= (d[2] | d[3]);
endmodule
