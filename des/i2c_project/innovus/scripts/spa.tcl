# static power analysis

# defines for spa
set reportDir "../report/spa"
set period "20" ;#ns
set flop_activity 0.2
set clock_gate_activity 0.2
set input_activity 0.3

# run static power analysis

set_power_analysis_mode -reset
set_power_analysis_mode -method static -corner min -create_binary_db true -write_static_currents true -honor_negative_energy true -ignore_control_signals true
set_power_output_dir -reset
set_power_output_dir $reportDir
set_default_switching_activity -reset
set_default_switching_activity -input_activity $input_activity -period $period -seq_activity $flop_activity -clock_gates_output $clock_gate_activity
read_activity_file -reset
set_power -reset
set_powerup_analysis -reset
set_dynamic_power_simulation -reset
report_power -rail_analysis_format VS -outfile $reportDir/top.rpt

# extract static power in mW from report.
if {![file exists $reportDir/top.rpt]} {
	puts "static power report does not exist!"
}
set power_line [exec tail -n3 $reportDir/top.rpt | head -n1]
set static_power [lindex $power_line 8]

