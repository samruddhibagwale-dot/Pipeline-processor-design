// 4-Stage Pipeline Processor
// Stages: IF, ID, EX, WB

module Pipeline_Processor (
    input clk
);

reg [7:0] IF_stage;
reg [7:0] ID_stage;
reg [7:0] EX_stage;
reg [7:0] WB_stage;

// Sample registers
reg [7:0] A = 8'd10;
reg [7:0] B = 8'd5;

// Instruction Fetch
always @(posedge clk) begin
    IF_stage <= 8'b00000001; // Example instruction (ADD)
end

// Instruction Decode
always @(posedge clk) begin
    ID_stage <= IF_stage;
end

// Execute stage
always @(posedge clk) begin
    EX_stage <= A + B; // ADD operation
end

// Write Back stage
always @(posedge clk) begin
    WB_stage <= EX_stage;
end

endmodule
