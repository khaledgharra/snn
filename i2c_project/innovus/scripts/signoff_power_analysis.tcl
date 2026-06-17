# final power analysis

set period "20" ;# ns

# Slow Corner

# Static Analysis
#spefIn ../dataout/eco/top_slow_eco8.SPEF -rc_corner SlowRC
set_power_analysis_mode -reset
set_power_analysis_mode -method static -corner max -create_binary_db true -write_static_currents true -honor_negative_energy true -ignore_control_signals true
set_power_output_dir -reset
set_power_output_dir ./power_signoff
set_default_switching_activity -reset
set_default_switching_activity -input_activity 0.2 -period $period -seq_activity 0.2
read_activity_file -reset
set_power -reset
set_dynamic_power_simulation -reset
report_power -rail_analysis_format VS -outfile ./power_signoff/slowRC/top.rpt

# Dynamic Analysis
set_power_analysis_mode -reset
set_power_analysis_mode -method dynamic_vectorless -disable_static true -corner max -create_binary_db false -write_static_currents false -honor_negative_energy true -ignore_control_signals true -power_grid_library /tools/kits/tower/TS18SL_6_01/iit/tower_allcells/fast_allcells.cl
set_power_output_dir -reset
set_power_output_dir ./power_signoff/slowRC
set_default_switching_activity -reset
set_default_switching_activity -input_activity 0.2 -period $period -seq_activity 0.5 -clock_gates_output 0.1
read_activity_file -reset
set_power -reset
set_powerup_analysis -reset
set_dynamic_power_simulation -reset
set_power_include_file -reset
report_power

# Final Rail Analysis - Static
set_rail_analysis_mode -ignore_incomplete_net true  -method static -power_switch_eco false -accuracy hd -power_grid_library /tools/kits/tower/TS18SL_6_01/iit/tower_allcells/fast_allcells.cl -vsrc_search_distance 50 -report_via_current_direction false
set_pg_nets -net VDD -voltage 1.8 -threshold 1.62 -tolerance 0.3
set_pg_nets -net VSS -voltage 0 -threshold 0.18 -tolerance 0.3
set_rail_analysis_domain -name all -pwrnets VDD -gndnets VSS
set_power_data -reset
set_power_data -format current -scale 1 {./power_signoff/slowRC/static_VDD.ptiavg ./power_signoff/slowRC/static_VSS.ptiavg}
set_power_pads -reset
set_power_pads -net VDD -format xy -file ./VDDtest.pp ;#your VDD.pp from Early rail analysis
set_power_pads -net VSS -format xy -file ./VSStest.pp ;#your VSS.pp from Early rail analysis
set_advanced_rail_options -reset
analyze_rail -type domain -results_directory ./power_signoff/slowRC/rail_static all

# Fast Corner

# Static Analysis
#spefIn ../dataout/eco/top_fast_eco8.SPEF -rc_corner FastRC
set_power_analysis_mode -reset
set_power_analysis_mode -method static -corner min -create_binary_db true -write_static_currents true -honor_negative_energy true -ignore_control_signals true
set_power_output_dir -reset
set_power_output_dir ./power_signoff
set_default_switching_activity -reset
set_default_switching_activity -input_activity 0.2 -period $period -seq_activity 0.2
read_activity_file -reset
set_power -reset
set_dynamic_power_simulation -reset
report_power -rail_analysis_format VS -outfile ./power_signoff/fastRC/top.rpt

# Dynamic Analysis
set_power_analysis_mode -reset
set_power_analysis_mode -method dynamic_vectorless -disable_static true -corner min -create_binary_db false -write_static_currents false -honor_negative_energy true -ignore_control_signals true -power_grid_library /tools/kits/tower/TS18SL_6_01/iit/tower_allcells/fast_allcells.cl
set_power_output_dir -reset
set_power_output_dir ./power_signoff/fastRC
set_default_switching_activity -reset
set_default_switching_activity -input_activity 0.2 -period $period -seq_activity 0.5 -clock_gates_output 0.1
read_activity_file -reset
set_power -reset
set_powerup_analysis -reset
set_dynamic_power_simulation -reset
set_power_include_file -reset
report_power

# Final Rail Analysis - Static
set_rail_analysis_mode -ignore_incomplete_net true  -method static -power_switch_eco false -accuracy hd -power_grid_library /tools/kits/tower/TS18SL_6_01/iit/tower_allcells/fast_allcells.cl -vsrc_search_distance 50 -report_via_current_direction false
set_pg_nets -net VDD -voltage 1.8 -threshold 1.62 -tolerance 0.3
set_pg_nets -net VSS -voltage 0 -threshold 0.18 -tolerance 0.3
set_rail_analysis_domain -name all -pwrnets VDD -gndnets VSS
set_power_data -reset
set_power_data -format current -scale 1 {./power_signoff/fastRC/static_VDD.ptiavg ./power_signoff/fastRC/static_VSS.ptiavg}
set_power_pads -reset
set_power_pads -net VDD -format xy -file ./VDDtest.pp ;#your VDD.pp from Early rail analysis
set_power_pads -net VSS -format xy -file ./VSStest.pp ;#your VSS.pp from Early rail analysis
set_advanced_rail_options -reset
analyze_rail -type domain -results_directory ./power_signoff/fastRC/rail_static all

