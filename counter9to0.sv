module counter9to0 (s,clk,set,reset,A0,A1,A2,A3);
input logic [1:0]s;
input logic clk,reset;
input logic [3:0]set;
output logic A0,A1,A2,A3;
logic load;
or orload (load,set[0],set[1],set[2],set[3]);
//for down module 
down_logic9 d1 (A0,A1,A2,A3,T0down,T1down,T2down,T3down);//(input logic A0,A1,A2,output logic T0,T1,T2);
//for up module 
up_logic9 up1(A0,A1,A2,A3,T0up,T1up,T2up,T3up);
//mix 
//10 down
mix4to1 mix5(T0,T0down,T0down,T0up,1'b0,s[0],s[1]);//(out, a, b, c, d, s0, s1);
mix4to1 mix6(T1,T1down,T1down,T1up,1'b0,s[0],s[1]);
mix4to1 mix7(T2,T2down,T2down,T2up,1'b0,s[0],s[1]);
mix4to1 mix8(T3,T3down,T3down,T3up,1'b0,s[0],s[1]);

t_ff ff1(T0,clk,set[3],reset,A01,A0bar);//(input logic t,clk,reset,output logic Q,Qbar);
t_ff ff2(T1,clk,set[2],reset,A11,A1bar);
t_ff ff3(T2,clk,set[1],reset,A21,A2bar);
t_ff ff4(T3,clk,set[0],reset,A31,A3bar);
mix1 mix11 (set[3],A01,load,A0);
mix1 mix12 (set[2],A11,load,A1);
mix1 mix13 (set[1],A21,load,A2);
mix1 mix14 (set[0],A31,load,A3);

endmodule 
