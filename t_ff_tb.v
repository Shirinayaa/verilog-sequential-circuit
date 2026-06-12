module t_ff_tb;
    reg t,clk;
    wire q;

t_ff uut(
    .t(t),
    .clk(clk),
    .q(q)
);

initial begin
    uut.q=0;

    $dumpfile("t_ff_wave.vcd");
    $dumpvars(0,t_ff_tb);
    $display("T CLK | Q");

    // test 1 : toggle
    t=1;clk=0;#10;
    $display("%b %b | %b",t,clk,q);
    clk=1;#10;
    $display("%b %b | %b",t,clk,q);

    // test 2: hold
    t=0;clk=0;#10;
    $display("%b %b | %b",t,clk,q);
    clk=1;#10;
    $display("%b %b | %b",t,clk,q);

    // test 3 : toggle
    t=1;clk=0;#10;
    $display("%b %b | %b",t,clk,q);
    clk=1;#10;
    $display("%b %b | %b",t,clk,q);

    $finish;
end
endmodule
