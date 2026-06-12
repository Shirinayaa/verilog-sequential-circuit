module jk_ff_tb;
    reg j,k,clk;
    wire q;

jk_ff uut(
    .j(j),
    .k(k),
    .clk(clk),
    .q(q)
);

initial begin
    $dumpfile("jk_ff_wave.vcd");
    $dumpvars(0,jk_ff_tb);
    $display("J K CLK | Q");

    // test 2 : reset
    j=0;k=1;clk=0;#10;
    $display("%b %b %b | %b",j,k,clk,q);
    clk=1;#10;
    $display("%b %b %b | %b",j,k,clk,q);

    //test 3 : set
    j=1;k=0;clk=0;#10;
    $display("%b %b %b | %b",j,k,clk,q);
    clk=1;#10;
    $display("%b %b %b | %b",j,k,clk,q);

     // test 1 : hold
    j=0;k=0;clk=0;#10;
    $display("%b %b %b | %b",j,k,clk,q);
    clk=1;#10;
    $display("%b %b %b | %b",j,k,clk,q);

    //test 4 : toggle
    j=1;k=1;clk=0;#10;
    $display("%b %b %b | %b",j,k,clk,q);
    clk=1;#10;
    $display("%b %b %b | %b",j,k,clk,q);

    //test 4 : toggle
    j=1;k=1;clk=0;#10;
    $display("%b %b %b | %b",j,k,clk,q);
    clk=1;#10;
    $display("%b %b %b | %b",j,k,clk,q);

    $finish;
end
    
endmodule
