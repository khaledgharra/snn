# i2c_master_top SDC for Innovus
# Clock enters via pad I9 (wb_clk_i), period 12ns (relaxed from synthesis 10ns for routing)
create_clock I9/I1/PAD -period 12 -waveform {0 6}
