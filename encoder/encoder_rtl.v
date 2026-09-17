module encoder_4_2(i,en,y);
  input [3:0]i;
  input en;
  output [1:0]y;

  assign y[0] = en & (i[1] | i[3]);
  assign y[1] = en & (i[2] | i[3]);
  
endmodule
