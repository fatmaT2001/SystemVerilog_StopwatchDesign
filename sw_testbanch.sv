module sw_testbanch ;
//module stopwatch(clk,r,o,l,num,m,an,sseg);
logic clk,r,o,l,m;
logic [6:0]num;
logic [3:0]an;
logic [7:0]sseg;
stopwatch sw (clk,r,o,l,num,m,an,sseg);
always #50 clk=~clk;
initial begin 
clk=0;
l=0;
m=0;
o=0;
r=1;
num=8'b00000000;
#100
r=0;
o=1;
#100
m=1;
#2000
$stop;
end
endmodule 

