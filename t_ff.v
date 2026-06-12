module t_ff(
    input t,clk,
    output reg q
);

always@(posedge clk)
begin
    if(t==1)
        q=~q;
end
endmodule
