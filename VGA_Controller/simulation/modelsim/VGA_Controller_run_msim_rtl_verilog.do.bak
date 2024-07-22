transcript on
if ![file isdirectory VGA_Controller_iputf_libs] {
	file mkdir VGA_Controller_iputf_libs
}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

###### Libraries for IPUTF cores 
###### End libraries for IPUTF cores 
###### MIF file copy and HDL compilation commands for IPUTF cores 


vcom "C:/Users/Administrator/Downloads/Polito/DE/Lab03/VGA_Controller/myPLL_sim/myPLL.vho"

vcom -93 -work work {C:/Users/Administrator/Downloads/Polito/DE/Lab03/VGA_Controller/VGA_Controller.vhd}

vcom -93 -work work {C:/Users/Administrator/Downloads/Polito/DE/Lab03/VGA_Controller/VGA_Controller_tb.vhd}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  tb

add wave *
view structure
view signals
run -all
