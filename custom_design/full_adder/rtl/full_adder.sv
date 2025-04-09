module full_adder 
#(
    parameter DATA_WIDTH = 8
)
(
    input clk,
    input rst,
    input  wire [DATA_WIDTH - 1:0] a,
    input  wire [DATA_WIDTH - 1:0] b,
    output wire [DATA_WIDTH:0] sum
);

    reg [DATA_WIDTH:0] sum_reg;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            sum_reg <= 0;
        end else begin
            sum_reg <= a + b;
        end
    end

    assign sum = sum_reg;
endmodule