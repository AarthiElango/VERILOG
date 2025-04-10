module decoder_2to4(input d1,d0,output reg[3:0] q);
      always@(*) begin 
           case({d1,d0})
              2'b00:q=4'b0001;
              2'b01:q=4'b0010;
              2'b10:q=4'b0100;
              2'b11:q=4'b1000;
           endcase 
      end 
endmodule
