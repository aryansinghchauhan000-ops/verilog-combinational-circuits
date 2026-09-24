module Comparator_4_bit(A,B,Geq,Eq, Leq);
  input [3:0] A,B;
  output Geq, Eq, Leq;
  
  assign Geq = (A > B);
  assign Eq  = (A == B);
  assign Leq = (A < B);
  
endmodule
