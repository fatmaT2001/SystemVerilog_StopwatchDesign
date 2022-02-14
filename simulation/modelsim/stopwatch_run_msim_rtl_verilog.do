transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/ahmed/Desktop/stopwatch {C:/Users/ahmed/Desktop/stopwatch/stopwatch.sv}
vlog -sv -work work +incdir+C:/Users/ahmed/Desktop/stopwatch {C:/Users/ahmed/Desktop/stopwatch/counter.sv}
vlog -sv -work work +incdir+C:/Users/ahmed/Desktop/stopwatch {C:/Users/ahmed/Desktop/stopwatch/clkdiv.sv}
vlog -sv -work work +incdir+C:/Users/ahmed/Desktop/stopwatch {C:/Users/ahmed/Desktop/stopwatch/counter9to0.sv}
vlog -sv -work work +incdir+C:/Users/ahmed/Desktop/stopwatch {C:/Users/ahmed/Desktop/stopwatch/down_logic9.sv}
vlog -sv -work work +incdir+C:/Users/ahmed/Desktop/stopwatch {C:/Users/ahmed/Desktop/stopwatch/up_logic9.sv}
vlog -sv -work work +incdir+C:/Users/ahmed/Desktop/stopwatch {C:/Users/ahmed/Desktop/stopwatch/mix4to1.sv}
vlog -sv -work work +incdir+C:/Users/ahmed/Desktop/stopwatch {C:/Users/ahmed/Desktop/stopwatch/t_ff.sv}
vlog -sv -work work +incdir+C:/Users/ahmed/Desktop/stopwatch {C:/Users/ahmed/Desktop/stopwatch/d_ff.sv}
vlog -sv -work work +incdir+C:/Users/ahmed/Desktop/stopwatch {C:/Users/ahmed/Desktop/stopwatch/mix1.sv}
vlog -sv -work work +incdir+C:/Users/ahmed/Desktop/stopwatch {C:/Users/ahmed/Desktop/stopwatch/couter0to5.sv}
vlog -sv -work work +incdir+C:/Users/ahmed/Desktop/stopwatch {C:/Users/ahmed/Desktop/stopwatch/down_logic.sv}
vlog -sv -work work +incdir+C:/Users/ahmed/Desktop/stopwatch {C:/Users/ahmed/Desktop/stopwatch/up_logic.sv}
vlog -sv -work work +incdir+C:/Users/ahmed/Desktop/stopwatch {C:/Users/ahmed/Desktop/stopwatch/disp_hex_mux.sv}

