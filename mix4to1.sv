module mix4to1(out, a, b, c, d, s0, s1);

output out;
input a, b, c, d, s0, s1;
wire sobar, s1bar, Q1, Q2, Q3, Q4;

not (s0bar, s0), (s1bar, s1);
and (Q1, a, s0bar, s1bar), (Q2, b, s0, s1bar),(Q3, c, s0bar, s1), (Q4, d, s0, s1);
or(out, Q1, Q2, Q3, Q4);

endmodule
