module d_ff_tb;

reg D, CLK;
wire Q;

d_ff uut(
    .D(D),
    .CLK(CLK),
    .Q(Q)
);

initial begin
    $dumpfile("d_ff_wave.vcd");
    $dumpvars(0, d_ff_tb);

    $display("D CLK | Q");

    // Test 1: Store 0
    D = 0; CLK = 0; #10;
    CLK = 1; #10;
    $display("%b %b | %b", D, CLK, Q);

    // Test 2: Store 1
    CLK = 0; D = 1; #10;
    CLK = 1; #10;
    $display("%b %b | %b", D, CLK, Q);

    // Test 3: Change D without rising edge
    D = 0; #10;
    $display("%b %b | %b", D, CLK, Q);

    // Test 4: Falling edge should not affect Q
    CLK = 0; #10;
    $display("%b %b | %b", D, CLK, Q);

    // Test 5: New rising edge captures new D
    CLK = 1; #10;
    $display("%b %b | %b", D, CLK, Q);

    $finish;
end

endmodule
