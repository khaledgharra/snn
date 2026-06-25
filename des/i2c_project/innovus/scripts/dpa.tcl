# defines for dynamic power analysis

set reportDir "../report/dpa"
set period "20" ;#ns
set flop_activity 0.2
set clock_gate_activity 0.2
set input_activity 0.3

#set power_lib_path "/tools/kits/tower/PDK_TS18SL/iit/tower_allcells/fast_allcells.cl"
set power_lib_path "/tools/kits/tower/TS18SL_6_01/iit/tower_allcells/fast_allcells.cl"

# run dynamic power analysis

set_power_analysis_mode -reset
set_power_analysis_mode -method dynamic_vectorless -disable_static true -corner min -create_binary_db false -write_static_currents false -honor_negative_energy true -ignore_control_signals true -power_grid_library $power_lib_path
set_power_output_dir -reset
set_power_output_dir $reportDir
set_default_switching_activity -reset
set_default_switching_activity -input_activity $input_activity -period $period -seq_activity $flop_activity -clock_gates_output $clock_gate_activity
read_activity_file -reset
set_power -reset
set_powerup_analysis -reset
set_dynamic_power_simulation -reset
set_power_include_file -reset
report_power -rail_analysis_format VS -outfile $reportDir/top.rpt

