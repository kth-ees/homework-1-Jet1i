module bin2gray (
  input logic [3:0] binary,
  output logic [3:0] gray
);
  assign gray = binary ^ (binary >> 1);
endmodule
