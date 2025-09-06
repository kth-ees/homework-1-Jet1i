module bin2bcd (
  input logic [3:0] binary,
  output logic [3:0] bcd,
  output logic carry
);
  always_comb begin
    if (binary < 10) begin
      carry = 1'b0;
      bcd   = binary;        
    end
    else begin
      carry = 1'b1;
      bcd   = binary - 4'd10;
    end
  end
endmodule
