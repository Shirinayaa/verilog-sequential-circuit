module reg_4x1_tb;
    reg [3:0] d;
    reg clk;
    wire [3:0] q;

reg_4x1 uut(
    .d(d),
    .clk(clk),
    .q(q)
);

initial begin
    $dumpfile("reg_4x1_wave.vcd");
    $dumpvars(0,reg_4x1_tb);
    $display("D CLK | Q");

    //test 1 : load
    d=4'b1010;clk=0;#10;
    $display("%b %b | %b ",d,clk,q);
    clk=1;#10;
    $display("%b %b | %b ",d,clk,q);

    //test 2 : hold
    d=4'b0101;clk=0;#10;
    $display("%b %b | %b ",d,clk,q);

    //test 3 : load
    clk=1;#10;
    $display("%b %b | %b ",d,clk,q);

    // test 4 : load
    d=4'b1111;clk=0;#10;
    $display("%b %b | %b ",d,clk,q);
    clk=1;#10;
    $display("%b %b | %b ",d,clk,q);

    $finish;
end
endmodule
