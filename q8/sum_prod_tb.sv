module sum_prod_tb;

  parameter N = 4;
  logic [N-1:0] X [5:0];
  logic [2*N+2:0] result;

  sum_prod #(N) dut (.*);

  initial begin
    // 随便几个测试向量
    X[0]=4'd2; X[1]=4'd3; X[2]=4'd1; X[3]=4'd4; X[4]=4'd0; X[5]=4'd5;
    #10;
    X[0]=4'd7; X[1]=4'd8; X[2]=4'd2; X[3]=4'd3; X[4]=4'd1; X[5]=4'd1;
    #10;
    X[0]=4'd15; X[1]=4'd15; X[2]=4'd15; X[3]=4'd15; X[4]=4'd15; X[5]=4'd15;
    #10;
    $stop;
  end
endmodule
