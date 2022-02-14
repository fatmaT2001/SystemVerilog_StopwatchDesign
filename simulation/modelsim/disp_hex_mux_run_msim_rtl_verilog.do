transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/ahmed/Desktop/New\ folder {C:/Users/ahmed/Desktop/New folder/disp_hex_mux.sv}

