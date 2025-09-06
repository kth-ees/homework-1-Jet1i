module sum_prod #(parameter N) (
  input  logic [N-1:0] X [5:0],
  output logic [2N+2:0] result
);

assign result = X[0]*X[1] + X[2]*X[3] + X[4]*X[5];

endmodule
