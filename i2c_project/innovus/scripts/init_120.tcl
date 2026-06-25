set init_lef_file {/tools/kits/tower/TS18SL_6_01/tsl18fs190svt_Rev_2019.09/tech/lef/6M1L/tsl180l6.lef /tools/kits/tower/TS18SL_6_01/tsl18fs190svt_Rev_2019.09/lib/lef/tsl18fs190svt.lef /tools/kits/tower/PDK_TS18SL/FS120_STD_Cells_0_18um_2005_12/DW_TOWER_tsl18fs120/2005.12/cds/lef/tsl18fs120.lef}
set init_verilog datain/top_before_pads.v
set init_mmmc_file datain/mmmc_120.view
set init_top_cell i2c_master_top
set init_io_file {}
set init_power_nets {VDD VDDC VDDO}
set init_ground_nets {VSS VSSC VSSO}
init_design
