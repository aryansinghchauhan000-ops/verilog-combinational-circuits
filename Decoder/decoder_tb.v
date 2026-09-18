module tb;
  reg [1:0]i;
  reg en;
  wire [3:0]y;

  decoder_2_4 abc(i,en,y);

  initial begin
    $monitor("Time = %0t, en = %b, i = %b, y = %b", $time, en, i, y);
    for(int k = 0; k<8; k++)
      begin
        {en,i} = k;
        #1;
      end
    $finish;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
  end
endmodule
