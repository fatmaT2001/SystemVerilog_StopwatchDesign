module clkdiv(reset, clock_in, clock_out);
input logic clock_in; // input clock on FPGA
input logic reset;
output logic clock_out; // output clock after dividing the input clock by divisor
logic [27:0] counter=28'd0;
//parameter DIVISOR = 28'd2; //real
parameter DIVISOR = 28'd2; //simulation
// The frequency of the output clk_out
//  = The frequency of the input clk_in divided by DIVISOR
// For example: Fclk_in = 50Mhz, if you want to get 1Hz signal to blink LEDs
// You will modify the DIVISOR parameter value to 28'd50.000.000
// Then the frequency of the output clk_out = 50Mhz/50.000.000 = 1Hz
always @(posedge clock_in )
begin
		if (reset == 1'b1)
			counter = 28'd0;
		else begin
			counter <= counter + 28'd1;
		if(counter>=(DIVISOR-1))
			counter <= 28'd0;
		clock_out <= (counter<DIVISOR/2)?1'b1:1'b0;
		end
end
endmodule