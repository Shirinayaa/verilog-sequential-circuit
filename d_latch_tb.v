module d_latch_tb;

reg D;
reg EN;
wire Q;

d_latch uut(
    .D(D),
    .EN(EN),
    .Q(Q)
);

initial begin
    $dumpfile("d_latch_wave.vcd");
    $dumpvars(0,d_latch_tb);

    $display("D EN | Q");

    // Transparent Mode
    D = 0; EN = 1; #10;
    $display("%b %b | %b", D, EN, Q);

    D = 1; #10;
    $display("%b %b | %b", D, EN, Q);

    D = 0; #10;
    $display("%b %b | %b", D, EN, Q);

    // Memory Mode
    D = 1; #10;
    $display("%b %b | %b", D, EN, Q);

    EN = 0; #10;
    $display("%b %b | %b", D, EN, Q);

    D = 0; #10;
    $display("%b %b | %b", D, EN, Q);

    D = 1; #10;
    $display("%b %b | %b", D, EN, Q);

    // Back to Transparent Mode
    EN = 1; #10;
    $display("%b %b | %b", D, EN, Q);

    $finish;
end

endmodule
