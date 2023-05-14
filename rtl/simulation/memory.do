quit -sim
file delete -force work
vlib work
vlog -f files_rtl.f
vsim work.processor_tb
log -r /*
run -all
add wave -position end  sim:/processor_tb/clk
add wave -position end -radix hex  sim:/processor_tb/instruction 
add wave -position end  sim:/processor_tb/if_valid_inst_out
add wave -position end -radix dec  sim:/processor_tb/proc_module/id_stage_0/regf_0/registers
restart -f
run -all