transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/ahmed/Desktop/New\ folder {C:/Users/ahmed/Desktop/New folder/counter9to0.sv}
vlog -sv -work work +incdir+C:/Users/ahmed/Desktop/New\ folder {C:/Users/ahmed/Desktop/New folder/down_logic9.sv}
vlog -sv -work work +incdir+C:/Users/ahmed/Desktop/New\ folder {C:/Users/ahmed/Desktop/New folder/up_logic9.sv}
vlog -sv -work work +incdir+C:/Users/ahmed/Desktop/New\ folder {C:/Users/ahmed/Desktop/New folder/mix4to1.sv}
vlog -sv -work work +incdir+C:/Users/ahmed/Desktop/New\ folder {C:/Users/ahmed/Desktop/New folder/t_ff.sv}
vlog -sv -work work +incdir+C:/Users/ahmed/Desktop/New\ folder {C:/Users/ahmed/Desktop/New folder/d_ff.sv}
vlog -sv -work work +incdir+C:/Users/ahmed/Desktop/New\ folder {C:/Users/ahmed/Desktop/New folder/mix1.sv}

