module testbench;
reg [1:0] a, b;
wire agb, aeb, alb;

comparator_2bit comp(agb, alb, aeb, a, b);

initial begin
a = 2'b11; b = 2'b10;
#100 a = 2'b11; b = 2'b11;
#100 a = 2'b10; b = 2'b11;
end
initial $monitor("%b %b %b",agb, aeb, alb);
endmodule
