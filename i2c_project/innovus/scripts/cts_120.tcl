puts {############### sourcing cts_120.tcl ###############}
setOptMode -effort high -setupTargetSlack 0 -holdTargetSlack 0
create_ccopt_clock_tree -name wb_clk -source [get_ports wb_clk_i]
set_ccopt_mode -cts_buffer_cells {buffd1 buffd2 buffd3 buffd4 buffd7 buffda}
set_ccopt_mode -cts_inverter_cells {inv0d0 inv0d1 inv0d2 inv0d4 inv0da}
set_ccopt_property target_max_trans 700ps
set_ccopt_property target_skew 700ps
set_ccopt_mode -integration native
clock_opt_design
