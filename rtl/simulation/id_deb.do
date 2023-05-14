quit -sim
file delete -force work
vlib work
vlog -f files_rtl.f
vsim work.processor_tb
log -r /*
run 900ps
add wave -position end  sim:/processor_tb/clk
add wave -position end -radix hex  sim:/processor_tb/proc_module/id_stage_0/if_id_IR 
add wave -position end -radix hex  sim:/processor_tb/proc_module/id_stage_0/id_rb_value_out 
add wave -position end -radix bin  sim:/processor_tb/proc_module/id_stage_0/id_opa_select_out 
add wave -position end -radix bin  sim:/processor_tb/proc_module/id_stage_0/id_opb_select_out 