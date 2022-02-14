 vlog -reportprogress 300 -work work {C:/Users/ahmed/Desktop/New folder/clkdiv.sv} {C:/Users/ahmed/Desktop/New folder/counter.sv} {C:/Users/ahmed/Desktop/New folder/counter0to5_test.sv} {C:/Users/ahmed/Desktop/New folder/counter9to0.sv} {C:/Users/ahmed/Desktop/New folder/couter0to5.sv} {C:/Users/ahmed/Desktop/New folder/d_ff.sv} {C:/Users/ahmed/Desktop/New folder/disp_hex_mux.sv} {C:/Users/ahmed/Desktop/New folder/down_logic.sv} {C:/Users/ahmed/Desktop/New folder/down_logic9.sv} {C:/Users/ahmed/Desktop/New folder/fsm.sv} {C:/Users/ahmed/Desktop/New folder/highfsm.sv} {C:/Users/ahmed/Desktop/New folder/lab4.sv} {C:/Users/ahmed/Desktop/New folder/mix1.sv} {C:/Users/ahmed/Desktop/New folder/mix4to1.sv} {C:/Users/ahmed/Desktop/New folder/real7segmant.sv} {C:/Users/ahmed/Desktop/New folder/segment7.sv} {C:/Users/ahmed/Desktop/New folder/stopwatch.sv} {C:/Users/ahmed/Desktop/New folder/sw_testbanch.sv} {C:/Users/ahmed/Desktop/New folder/t_ff.sv} {C:/Users/ahmed/Desktop/New folder/up_logic.sv} {C:/Users/ahmed/Desktop/New folder/up_logic9.sv}
 vsim -gui work.sw_testbanch
 add wave -position insertpoint sim:/sw_testbanch/*
force -freeze sim:/sw_testbanch/r 1 0
 run -all
add wave -position insertpoint sim:/sw_testbanch/*
force -freeze sim:/sw_testbanch/r 0 0
run
vlog -reportprogress 300 -work work {C:/Users/ahmed/Desktop/New folder/clkdiv.sv} {C:/Users/ahmed/Desktop/New folder/counter.sv} {C:/Users/ahmed/Desktop/New folder/counter0to5_test.sv} {C:/Users/ahmed/Desktop/New folder/counter9to0.sv} {C:/Users/ahmed/Desktop/New folder/couter0to5.sv} {C:/Users/ahmed/Desktop/New folder/d_ff.sv} {C:/Users/ahmed/Desktop/New folder/disp_hex_mux.sv} {C:/Users/ahmed/Desktop/New folder/down_logic.sv} {C:/Users/ahmed/Desktop/New folder/down_logic9.sv} {C:/Users/ahmed/Desktop/New folder/fsm.sv} {C:/Users/ahmed/Desktop/New folder/highfsm.sv} {C:/Users/ahmed/Desktop/New folder/lab4.sv} {C:/Users/ahmed/Desktop/New folder/mix1.sv} {C:/Users/ahmed/Desktop/New folder/mix4to1.sv} {C:/Users/ahmed/Desktop/New folder/real7segmant.sv} {C:/Users/ahmed/Desktop/New folder/segment7.sv} {C:/Users/ahmed/Desktop/New folder/stopwatch.sv} {C:/Users/ahmed/Desktop/New folder/sw_testbanch.sv} {C:/Users/ahmed/Desktop/New folder/t_ff.sv} {C:/Users/ahmed/Desktop/New folder/up_logic.sv} {C:/Users/ahmed/Desktop/New folder/up_logic9.sv}
vsim -gui work.sw_testbanch
add wave -position insertpoint sim:/sw_testbanch/*
run -all
run
history