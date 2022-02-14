//module couter0to5 (s,clk,reset,i0,i1,i2,A0,A1,A2);
//input logic [1:0]s;
//input logic clk,i0,i1,i2,reset;
//output logic A0,A1,A2;
////for down module 
//down_logic d1 (A0,A1,A2,T0down,T1down,T2down);//(input logic A0,A1,A2,output logic T0,T1,T2);
////for up module 
//up_logic up1(A0,A1,A2,T0up,T1up,T2up);
////mix 
////10 down
//mix4to1 mix1(T0,i0,T0down,T0up,1'b0,s[0],s[1]);//(out, a, b, c, d, s0, s1);
//mix4to1 mix2(T1,i1,T1down,T1up,1'b0,s[0],s[1]);
//mix4to1 mix3(T2,i2,T2down,T2up,1'b0,s[0],s[1]);
//t_ff ff1(T0,clk,reset,A0,A0bar);//(input logic t,clk,reset,output logic Q,Qbar);
//t_ff ff2(T1,clk,reset,A1,A1bar);
//t_ff ff3(T2,clk,reset,A2,A2bar);l
module couter0to5 (s,clk,set,reset,A0,A1,A2);
input logic [1:0]s;
input logic clk,reset;
input logic  [2:0]set;
output logic A0,A1,A2;
logic load;
or orload (load,set[0],set[1],set[2]);
//for down module 
down_logic d1 (A0,A1,A2,T0down,T1down,T2down);//(input logic A0,A1,A2,output logic T0,T1,T2);
//for up module 
up_logic up1(A0,A1,A2,T0up,T1up,T2up);
//mix 
//10 down
mix4to1 mix1(T0,T0down,T0down,T0up,1'b0,s[0],s[1]);//(out, a, b, c, d, s0, s1);
mix4to1 mix2(T1,T1down,T1down,T1up,1'b0,s[0],s[1]);
mix4to1 mix3(T2,T2down,T2down,T2up,1'b0,s[0],s[1]);
t_ff ff1(T0,clk,set[2],reset,A01,A0bar);//(input logic t,clk,reset,output logic Q,Qbar);
t_ff ff2(T1,clk,set[1],reset,A11,A1bar);
t_ff ff3(T2,clk,set[0],reset,A21,A2bar);
//(a, b, sel, y);
mix1 mix11 (set[2],A01,load,A0);
mix1 mix12 (set[1],A11,load,A1);
mix1 mix13 (set[0],A21,load,A2);

endmodule 
