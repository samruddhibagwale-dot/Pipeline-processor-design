// Testbench for Pipeline Processor

module pipeline_tb;

reg clk;

Pipeline_Processor uut (
    .clk(clk)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    #50;
    $stop;
end

endmodule
