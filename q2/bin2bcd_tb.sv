module bin2bcd_tb;

  // Testbench signals
  logic [3:0] binary;
  logic [3:0] bcd;
  logic carry;

  bin2bcd dut (
    .binary(bin),
    .bcd(bcd),
    .carry(carry)
  );

  initial begin
    for (int i = 0; i < 16; i++) begin
      bin = i;
      #10; 
    end
    $stop;
  end
endmodule
