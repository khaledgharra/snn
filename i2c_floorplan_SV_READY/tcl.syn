#============================================================
# I2C Master synthesis script - SystemVerilog version
# Tool       : Synopsys Design Vision / Design Compiler
# Top module : i2c_master_top
# Clock port : wb_clk_i
# Output     : i2c_master_top_syn.v
#============================================================

# Clean old data from this Design Vision session
remove_design -all

# Variables
set DESIGN_NAME i2c_master_top
set CLK_NAME    wb_clk_i
set CLK_PERIOD  10

# Make includes searchable from the current folder
set_app_var search_path [concat [list . [pwd]] $search_path]

# Create WORK library for analyze/elaborate flow
file mkdir WORK
define_design_lib WORK -path ./WORK

# Read SystemVerilog RTL files
# timescale.sv and i2c_master_defines.sv are included inside the RTL files,
# so they must stay in this same folder.
analyze -format sverilog {
    ./i2c_master_bit_ctrl.sv
    ./i2c_master_byte_ctrl.sv
    ./i2c_master_top.sv
}

# Build the top design
elaborate $DESIGN_NAME
current_design $DESIGN_NAME
link
uniquify
check_design

# Clock constraint
create_clock -name $CLK_NAME -period $CLK_PERIOD -waveform {0 5} [get_ports $CLK_NAME]

# Basic I/O constraints for backend/floorplan exercise
set_input_delay  0 -clock $CLK_NAME [remove_from_collection [all_inputs] [get_ports $CLK_NAME]]
set_output_delay 0 -clock $CLK_NAME [all_outputs]

# Synthesis - same basic idea as the previous backend lab
compile -exact_map

# Reports
file mkdir reports
redirect -file reports/timing.rpt { report_timing -max_paths 10 }
redirect -file reports/area.rpt   { report_area }
redirect -file reports/power.rpt  { report_power }

# Netlist for Innovus / floorplan
write -hierarchy -format verilog -output i2c_master_top_syn.v

puts "============================================================"
puts "SYNTHESIS FINISHED SUCCESSFULLY"
puts "Generated netlist: i2c_master_top_syn.v"
puts "Reports folder: reports/"
puts "Top module: i2c_master_top"
puts "Clock port: wb_clk_i"
puts "============================================================"
