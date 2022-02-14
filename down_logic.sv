module down_logic (input logic A0,A1,A2,output logic T0,T1,T2);
//invertors 
not not1 (A0bar,A0);
not not2 (A1bar,A1);
//for T0
assign T0=1;
//for T2
and andT21 (n1,A1bar,A0bar);
and andT22 (n2,A1,A2,A0);
or orT2 (T2,n1,n2);
//for T1
and andT11 (n3,A1,A0bar);
and andT12 (n4,A1,A2);
and andT13 (n5,A2,A0bar);

or orT1 (T1,n3,n4,n5);
endmodule 