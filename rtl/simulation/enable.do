quit -sim
file delete -force work
vlib work
vlog -f files_rtl.f
vsim work.processor_tb
log -r /*
run -all
add wave -position end  sim:/processor_tb/clk
add wave -position end -radix hex  sim:/processor_tb/instruction 
add wave -position end -radix hex  sim:/processor_tb/proc_module/id_stage_0/id_rb_value_out
add wave -position end -radix hex  sim:/processor_tb/proc_module/id_stage_0/id_opa_select_out
add wave -position end -radix hex  sim:/processor_tb/proc_module/id_stage_0/id_opb_select_out
add wave -position end -radix hex  sim:/processor_tb/proc_module/mem_wb_enable
add wave -position end -radix bin  sim:/processor_tb/proc_module/if_id_enable
add wave -position end -radix bin  sim:/processor_tb/proc_module/id_ex_enable
add wave -position end -radix bin  sim:/processor_tb/proc_module/ex_mem_enable
add wave -position end -radix bin  sim:/processor_tb/force_stall
add wave -position end -radix bin  sim:/processor_tb/proc_module/if_stage_0/stall
add wave -position end -radix hex  sim:/processor_tb/if_IR_out
add wave -position end -radix hex  sim:/processor_tb/proc_module/if_stage_0/did_if_in
add wave -position end -radix hex  sim:/processor_tb/proc_module/if_stage_0/dex_if_in
add wave -position end -radix hex  sim:/processor_tb/proc_module/if_stage_0/dmem_if_in
add wave -position end -radix hex  sim:/processor_tb/proc_module/if_stage_0/stall
add wave -position end -radix hex  sim:/processor_tb/proc_module/if_stage_0/PC_enable
add wave -position end -radix hex  sim:/processor_tb/proc_module/if_stage_0/ra_if
add wave -position end -radix hex  sim:/processor_tb/proc_module/if_stage_0/rb_if
add wave -position end -radix hex  sim:/processor_tb/proc_module/if_stage_0/rd_if  
add wave -position end -radix hex  sim:/processor_tb/proc_module/if_stage_0/proc2Imem_addr
add wave -position end -radix hex  sim:/processor_tb/proc_module/if_stage_0/Imem2proc_data 
restart -f
run -all