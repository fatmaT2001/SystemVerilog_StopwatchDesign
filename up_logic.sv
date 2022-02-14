module up_logic (input logic A0,A1,A2,output logic T0,T1,T2);
//invertor
not not1 (A2bar,A2);
//for T0
assign T0=1;
//for T1
and andT1 (T1,A2bar,A0);
//for T2
and andT22 (n2,A0,A2);
and andT21 (n1,A1,A0);
or orT2 (T2,n1,n2);
endmodule 