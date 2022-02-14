module down_logic9  (input logic A0,A1,A2,A3,output logic T0,T1,T2,T3);
assign T0=1;
//invertors 
not not1 (A0bar,A0);
not not2 (A1bar,A1);
not not3 (A3bar,A3);
not not4 (A2bar,A2);

//for T1
and andT11 (t1,A3bar,A0bar,A1);
and andT12 (t2,A3bar,A0bar,A2);
and andT13 (t3,A1bar,A0bar,A2bar,A3);
and andT14 (t4,A1,A2,A3,A0);

or orT1 (T1,t1,t4,t2,t3);
//for T2
and andT21 (p2,A2,A3bar,A1bar,A0bar);
and andT22 (p3,A1bar,A0bar,A2bar,A3);
and andT23 (p1,A1,A2,A3,A0);

or orT2 (T2,p1,p2,p3);
//for T3
and andT31 (y1,A1bar,A0bar,A2bar,A2bar);
and andT32 (y2,A1bar,A3,A2bar,A0bar);
and andT33 (y3,A1,A2,A3,A0);

or orT3 (T3,y1,y2,y3);
endmodule 