onerror {quit -f}
vlib work
vlog -work work DEMUX_REG.vo
vlog -work work DEMUX_REG.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.DEMUX_REG_vlg_vec_tst
vcd file -direction DEMUX_REG.msim.vcd
vcd add -internal DEMUX_REG_vlg_vec_tst/*
vcd add -internal DEMUX_REG_vlg_vec_tst/i1/*
add wave /*
run -all
