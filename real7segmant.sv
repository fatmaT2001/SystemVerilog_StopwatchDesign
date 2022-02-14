module real7segmant (s,clk,set,reset,seg );
    input logic [1:0]s;
	 input logic [3:0]set;
	 input logic clk,reset;
    output logic[6:0] seg;

logic[3:0] bcd;
logic A0,A1,A2,A3;
assign bcd={A3,A2,A1,A0};
counter9to0 c (s,clk,set,reset,A0,A1,A2,A3);
    always_comb
        case (bcd) //case statement
					        //gfedcba
            0 : seg = 7'b0111111;
            1 : seg = 7'b0000110;
            2 : seg = 7'b1011011;
            3 : seg = 7'b1001111;
            4 : seg = 7'b1100110;
            5 : seg = 7'b1101101;
            6 : seg = 7'b1111101;
            7 : seg = 7'b0000111;
            8 : seg = 7'b1111111;
            9 : seg = 7'b1101111;
            //switch off 7 segment character when the bcd digit is not a decimal number.
            default : seg = 7'b0000000; 
        endcase
endmodule