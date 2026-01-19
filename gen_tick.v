//=========================================================================
// Name & Email must be EXACTLY as in Gradescope roster!
// Name: 
// Email: 
// 
// Assignment name: 
// Lab section: 
// TA: 
// 
// I hereby certify that I have not received assistance on this assignment,
// or used code, from ANY outside source other than the instruction team
// (apart from what was provided in the starter file).
//
//=========================================================================

module gen_tick #(
    parameter SRC_FREQ  = 5000,
    parameter TICK_FREQ = 1
)(
    input  src_clk,
    input  enable,
    output tick
);

    // Divider half-period in source-clock cycles minus 1
    integer limit = SRC_FREQ / TICK_FREQ / 2 - 1;

    integer accumulator = 0;
    reg tick_out = 0;

    always @(posedge src_clk) begin
        if (enable) begin
            accumulator <= accumulator + 1;
            if (accumulator >= limit) begin
                tick_out <= ~tick_out;
                accumulator <= 0;
            end
        end else begin
            tick_out <= 0;
            accumulator <= 0;
        end
    end

    assign tick = tick_out;

endmodule
