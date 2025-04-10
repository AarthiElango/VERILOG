module demux_1to4(input d,s1,s0,output reg [3:0] y);
    always@(*) begin
	y=4'b0000;
        case({s1,s0})
           2'b00:y[0]=d;
           2'b01:y[1]=d;
           2'b10:y[2]=d;
           2'b11:y[3]=d;
       endcase
    end 
endmodule
