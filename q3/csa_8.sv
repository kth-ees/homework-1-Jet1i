module csa_8 (
  input logic [7:0] a, b,
  output logic [7:0] sum,
  output logic carry
);
  logic [3:0] sum_low, sum_high0, sum_high1;
  logic c3, c7_0, c7_1;

  adder_4 adder_low (A[3:0], B[3:0], sum_low, c3);


  adder_4 adder_high0 (A[7:4], B[7:4], sum_high0, c7_0);


  adder_4 adder_high1 (A[7:4], B[7:4] + 4'b0001, sum_high1, c7_1);


  assign sum[3:0] = sum_low;
  assign sum[7:4] = (c3 == 1'b0) ? sum_high0 : sum_high1;
  assign carry    = (c3 == 1'b0) ? c7_0      : c7_1;
endmodule
