module counter0to5_test;
logic [1:0]s;
logic clk,reset,load,i0,i1,i2,A0,A1,A2; //(input logic clk,m,en,output logic Q0,Q1,Q2)
couter0to5 c1 (s,clk,load,reset,i0,i1,i2,A0,A1,A2);//(s,clk,set,i0,i1,i2,A0,A1,A2); 
always #50 clk=~clk;
initial begin 
clk=0;
s=2'b00; 
i0=1;
i1=0;
i2=0;
load=0;
reset=1;
#100
reset=0;
#200
load=1;
#200
load =0;
#2000
$stop;
end
initial 
begin
$display ("\t\t time ,   T0,    T1,    T2     ");
$monitor ("    %d       ,  %b       , %b     ,  %b",$time ,A0,A1,A2); 
end
endmodule 
