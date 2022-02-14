module up_logic9 (input logic A0,A1,A2,A3,output logic T0,T1,T2,T3);
assign T0=1;
// for T1 
not notT3 (A2bar,A2);
not notT2 (A1bar,A1);
not notT4 (A0bar,A0);
not notT1 (A3bar,A3);
and andT11 (s1,A3bar,A0);
and andTT12 (s2,A1,A2,A3,A0);
or orT1 (T1,s1,s2);
//for T2 
and andT21 (p2,A1,A0,A3bar);
and andTT22 (p1,A1,A2,A3,A0);
or orT2 (T2,p1,p2);
//for T3 
and andT31 (t1,A3,A0,A1bar,A2bar);
and andT32 (t2,A2,A1,A0,A3bar);
and andT33 (t3,A1,A2,A3,A0);

or orT3 (T3,t1,t2,t3);
endmodule 
