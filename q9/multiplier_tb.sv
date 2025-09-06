module multiplier_tb;

  logic [15:0] a, b;
  logic [31:0] product;
  multiplier dut (.*);
  initial begin
    a=16'h1234; b=16'h00F3; #10;
    a=16'hFFFF; b=16'h0001; #10;
    a=16'hABCD; b=16'h1357; #10;
    $stop;
  end
  
endmodule
