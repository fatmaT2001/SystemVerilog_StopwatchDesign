//Verilog module.
module segment7(s,clk,set,reset,seg);
		input logic [1:0]s;
		input logic clk,reset;
		input logic [2:0]set;
     output logic[6:0] seg;
//counter 
logic[2:0] bcd;
logic A0,A1,A2;
assign bcd={A2,A1,A0};
couter0to5 counter (s,clk,set,reset,A0,A1,A2);
    always_comb
        case (bcd) //case statement
					        //gfedcba
            0 : seg = 7'b0111111;
            1 : seg = 7'b0000110;
            2 : seg = 7'b1011011;
            3 : seg = 7'b1001111;
            4 : seg = 7'b1100110;
            5 : seg = 7'b1101101;

            default : seg = 7'b0000000; 
        endcase
endmodule
