module highfsm (clk,r,s,l,m,an,sseg);
input logic clk,r,s,l,m;
output logic [3:0]an;
output logic [7:0]sseg;
logic [1:0]q;
logic [6:0]num,fnum;
counter c (clk,r,s,l,m,num,q,reset,fnum);
stopwatch w (clk,q,fnum,reset,an,sseg);//module stopwatch(clk,s,load,reset,an,sseg);

endmodule 