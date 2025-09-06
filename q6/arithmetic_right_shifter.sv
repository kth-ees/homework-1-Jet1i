module arithmetic_right_shifter #(parameter N) (
  input logic [N-1:0] input_data,
  input logic [1:0] control,
  output logic [N-1:0] shifted_result
);

  logic sign;
  assign sign = input_data[N-1];

  always_comb begin
    case (control)
      2'b00: shifted_result = input_data;
      2'b01: shifted_result = {sign,     input_data[N-1:1]};
      2'b10: shifted_result = {{2{sign}}, input_data[N-1:2]};
      2'b11: shifted_result = {{3{sign}}, input_data[N-1:3]};
      default: shifted_result = input_data;
    endcase
  end
endmodule
