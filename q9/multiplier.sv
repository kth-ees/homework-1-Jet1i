module mul4 (
  input  logic [3:0] x, y,
  output logic [7:0] p
);
  assign p = x * y;          
endmodule

module multiplier (
  input  logic [15:0] a, b,          
  output logic [31:0] product
);
  logic [7:0] pp [3:0][3:0];         

  genvar i, j;
  generate
    for (i=0; i<4; i++) begin : gi
      for (j=0; j<4; j++) begin : gj
        mul4 u_mul4(
          .x(a[i*4 +: 4]),
          .y(b[j*4 +: 4]),
          .p(pp[i][j])
        );
      end
    end
  endgenerate

  always_comb begin
    product = '0;
    for (int ii=0; ii<4; ii++)
      for (int jj=0; jj<4; jj++)
        product += ({24'b0, pp[ii][jj]} << (4*(ii+jj)));
  end
endmodule
