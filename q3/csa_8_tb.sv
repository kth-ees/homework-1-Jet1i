module csa_8_tb;

  // Inputs
  logic [7:0] a;
  logic [7:0] b;
  logic [7:0] sum,
  logic carry;

  CSA_8 dut (.*);

  initial begin
    A = 0; B = 0;
    #5;
    repeat (5) begin
      A = $urandom_range(0,255);
      B = $urandom_range(0,255);
      #10;
    end
    $stop;
  end
  
endmodule
