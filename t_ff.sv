module t_ff (input logic t,clk,set,reset,output logic Q,Qbar);
//(input logic D,set,reset,clk,output logic Q,output logic Qbar);//(Q0,1'b1,clk,en,Q0)
xor xor1 (D,t,Q);
d_ff ff (D,set,reset,clk,Q,Qbar);
endmodule 