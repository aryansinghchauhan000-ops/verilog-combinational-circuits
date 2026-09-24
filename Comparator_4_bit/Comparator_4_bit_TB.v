module tb;
  reg [3:0]A,B;
  wire Geq, Eq, Leq;
  
  Comparator_4_bit abc(A,B,Geq,Eq, Leq);
  
  initial begin
    A = 4'b0000;
    B = 4'b0000;

    $monitor("Time =%0t, A = %b, B = %b, Ge = %b, Eq = %b, Leq = %b", $time, A, B, Geq, Eq, Leq);
    
    #1;
    A = 4'b1111; B = 4'b0000;
    #1;
    A = 4'b1010; B = 4'b0101;
    #1;
    A = 4'b0000; B = 4'b0000;
    #1;
    A = 4'b1111; B = 4'b1111;
    #1;
    A = 4'b0101; B = 4'b1010;
    #1;
    A = 4'b0000; B = 4'b1111;
    #1;
    
    $finish;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
  end
endmodule

    
    
