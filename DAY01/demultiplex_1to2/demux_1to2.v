module demux_1to2(input s,d,output reg y1,y0);
     always@(*) begin 
        y1=s?d:1'b0;
        y0=~s?d:1'b0;
     end 
endmodule

