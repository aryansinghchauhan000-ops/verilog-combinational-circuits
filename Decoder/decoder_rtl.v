module decoder_2_4(i,en, y);
  input [1:0]i;
  input en;
  output [3:0]y;

  assign y[0] = en & ~i[1] & ~i[0];
  assign y[1] = en & ~i[1] &  i[0];
  assign y[2] = en &  i[1] & ~i[0];
  assign y[3] = en &  i[1] &  i[0];
endmodule

  
