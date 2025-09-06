module arithmetic_right_shifter_tb;

  localparam N = 8;

  logic [N-1:0] input_data;
  logic [1:0]   control;
  logic [N-1:0] shifted_result;

  arithmetic_right_shifter #(N) dut (.*);

  initial begin
    input_data = 8'b10110110;   
    for (int i = 0; i < 4; i++) begin
      control = i;
      #10;
    end

    input_data = 8'b01010011;   
    for (int i = 0; i < 4; i++) begin
      control = i;
      #10;
    end

    $stop;
  end
endmodule
