# Rename pad-ring instances to meaningful names based on the signal
# each pad actually carries (mapping verified against top.v).
# Safe to run at any stage after floorplan/place/route -- renameInst
# only relabels the instance in the design database, it does not
# affect nets, placement, or routing.

renameInst I1  pad_tie_vdd
renameInst I2  pad_tie_vss

renameInst I4  pad_scl_i
renameInst I5  pad_sda_i
renameInst I6  pad_wb_adr_i_2
renameInst I7  pad_wb_adr_i_1
renameInst I8  pad_wb_adr_i_0
renameInst I9  pad_wb_clk_i
renameInst I10 pad_wb_cyc_i
renameInst I11 pad_wb_dat_i_7
renameInst I12 pad_wb_dat_i_6
renameInst I13 pad_wb_dat_i_5
renameInst I14 pad_wb_dat_i_4
renameInst I15 pad_wb_dat_i_3
renameInst I16 pad_wb_dat_i_2
renameInst I17 pad_wb_dat_i_1
renameInst I18 pad_wb_dat_i_0
renameInst I19 pad_wb_rst_i
renameInst I20 pad_wb_stb_i
renameInst I21 pad_wb_we_i

renameInst I22 pad_scl_o
renameInst I23 pad_scl_padoen_o
renameInst I24 pad_sda_o
renameInst I25 pad_sda_padoen_o
renameInst I26 pad_wb_ack_o
renameInst I27 pad_wb_dat_o_7
renameInst I28 pad_wb_dat_o_6
renameInst I29 pad_wb_dat_o_5
renameInst I30 pad_wb_dat_o_4
renameInst I31 pad_wb_dat_o_3
renameInst I32 pad_wb_dat_o_2
renameInst I33 pad_wb_dat_o_1
renameInst I34 pad_wb_dat_o_0

renameInst PAD_G1 pad_vss_1
renameInst PAD_I1 pad_vdd_1
renameInst PAD_G3 pad_vss_3
renameInst PAD_I3 pad_vdd_3
renameInst PAD_G5 pad_vss_5
renameInst PAD_I5 pad_vdd_5
renameInst PAD_G7 pad_vss_7
renameInst PAD_I7 pad_vdd_7

# Pcornerul / Pcornerur / Pcornerll / Pcornerlr are already clear -- left as is.
