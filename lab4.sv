module lab4(clk,s,reset,an,sseg);
input logic clk;
input logic reset;
output logic [3:0]an;
output logic [7:0]sseg;
input logic [1:0]s;
logic [2:0]counter51,counter52;
logic [3:0] counter91,counter92;
clkdiv cd (reset,clk,clk1);//(reset, clock_in, clock_out);
couter0to5 c15(s,clk1,1'b0,reset,A05,A15,A25);
//
and clk21 (t1,A05,~A15,A25);
and clk22 (t2,~A05,~A15,~A25);
or orclk2 (clk2,t1,t2);
//
counter9to0 c19(s,clk2,1'b0,reset,A09,A19,A29,A39);
//
and clk31 (t3,A09,~A19,~A29,A39);
and clk32 (t4,~A09,~A19,~A29,~A39);
or orclk3 (clk3,t4,t3);
//
couter0to5 c25(s,clk3,1'b0,reset,A051,A151,A251);
counter9to0 c29(s,clk,1'b0,reset,A091,A191,A291,A391);
assign counter51={A25,A15,A05};
assign counter91={A39,A29,A19,A09};
assign counter52={A251,A151,A051};
assign counter92={A391,A291,A191,A091};

disp_hex_mux seven4(clk,reset,counter91,counter51,counter92,counter92,4'b1111,an,sseg);
endmodule
