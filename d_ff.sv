module d_ff(input logic D,set,reset,clk,output logic Q,output logic Qbar);//(Q0,1'b1,clk,en,Q0)

not not1 (setbar,set);
not not2 (resetbar,reset);
nand nand1 (t1,setbar,t2,t4);
nand nand2 (t2,clk,t1,resetbar);
nand nand3 (t3,clk,t2,t4);
nand nand4 (t4,D,t3,resetbar);
nand nand5 (Q,Qbar,t2,setbar);
nand nand6 (Qbar,Q,t3,resetbar);




endmodule 
