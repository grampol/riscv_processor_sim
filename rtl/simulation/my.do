quit -sim
file delete -force work
vlib work
vlog -f files_rtl.f
vsim work.processor_tb
log -r /*
run -all
add wave -position end  sim:/processor_tb/clk
add wave -position end -radix hex  sim:/processor_tb/if_IR_out
add wave -position end  sim:/processor_tb/if_valid_inst_out
add wave -position end -radix hex  sim:/processor_tb/pc_addr
add wave -position end -radix dec  sim:/processor_tb/ex_mem_NPC
add wave -position end -radix dec  sim:/processor_tb/mem2proc_data
add wave -position end -radix dec  sim:/processor_tb/proc2mem_data
add wave -position end -radix hex  sim:/processor_tb/proc2Dmem_command
add wave -position end -radix hex  sim:/processor_tb/proc2Dmem_addr