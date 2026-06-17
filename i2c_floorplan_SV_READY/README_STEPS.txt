I2C FLOORPLAN - SYSTEMVERILOG READY BUNDLE

This folder contains SystemVerilog source files (.sv) and synthesis scripts.

Files included:
- timescale.sv
- i2c_master_defines.sv
- i2c_master_bit_ctrl.sv
- i2c_master_byte_ctrl.sv
- i2c_master_top.sv
- syn.tcl
- tcl.syn

How to run in the lab computer:

1) Open Terminal:
   cd ~/Downloads
   unzip i2c_floorplan_SV_READY.zip
   cd i2c_floorplan_SV_READY
   ls -1

2) Open Design Vision from this folder:
   design_vision &

3) In Design Vision command line run:
   source syn.tcl

Expected output:
- i2c_master_top_syn.v
- reports/timing.rpt
- reports/area.rpt
- reports/power.rpt

Important:
Use this folder, not the older i2c_floorplan_lab_bundle folder.
The RTL files are .sv and the script uses analyze -format sverilog.
