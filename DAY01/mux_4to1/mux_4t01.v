module mux_4t01(input s1,s0,output reg [1:0] y);
      always@(*) begin 
          if(s1) begin 
              if(s0)
                 y=2'b11;
              else 
                 y=2'b10;
          
          end 
          else begin
              if(s0)
                 y=2'b01;
              else 
                 y=2'b00;
          end 
       end 
endmodule

