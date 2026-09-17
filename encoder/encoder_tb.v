module tb;
  reg [3:0]i;
  reg en;
  wire [1:0]y;

  encoder_4_2 abc(i,en,y);

  initial begin
    $monitor("Time = %0t, en = %b; i = %b; y = %b", $time, en, i, y);
    for( int k = 0; k<32; k++)
    {en, i} = k;
    #1;
  end
  $finish;
  end
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
  end
endmodule
             
