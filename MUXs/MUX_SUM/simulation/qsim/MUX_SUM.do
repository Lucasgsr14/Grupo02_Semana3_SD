onerror {quit -f}
vlib work
vlog -work work MUX_SUM.vo
vlog -work work MUX_SUM.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.MUX_SUM_vlg_vec_tst
vcd file -direction MUX_SUM.msim.vcd
vcd add -internal MUX_SUM_vlg_vec_tst/*
vcd add -internal MUX_SUM_vlg_vec_tst/i1/*
add wave /*
run -all
