
puts "################## sourcing floorplan.tcl ##################"
# First and second sizes are the floorplan X and Y lengths. The .08 suffix is mandatory due to the fixed pads size.
# The four "120.5" are the margins of the die from each edge.
floorPlan -site CoreSite -d 4980.08 4980.08 120.5 120.5 120.5 120.5

#for scan chains
specifyScanChain scan_in1 -start "I40/I1/CIN" -stop "I77/I1/I"
specifyScanChain scan_in2 -start "I41/I1/CIN" -stop "I78/I1/I"
specifyScanChain scan_in3 -start "I42/I1/CIN" -stop "I79/I1/I"
specifyScanChain scan_in4 -start "I43/I1/CIN" -stop "I80/I1/I"
specifyScanChain scan_in5 -start "I44/I1/CIN" -stop "I81/I1/I"
setScanReorderMode -compLogic true
scantrace

# define global nets VDD/VSS , VDD0/VSS0
source ../scripts/glnets.src
deselectAll

source ../scripts/mvcorners.tcl
deselectAll
source ../scripts/adjustPads.tcl

# create ring around core
# M5 vertical , M6 horizontal
# NOTE: changed "-around core" to "-around default_power_domain"
addRing -spacing_bottom 1.8 -width_left 8 -width_bottom 8 -width_top 8 -spacing_top 1.8 -layer_bottom M5 -center 1 -stacked_via_top_layer TOP_M -width_right 8 -around default_power_domain -jog_distance 0.56 -offset_bottom 0.56 -layer_top M5 -threshold 0.56 -offset_left 0.56 -spacing_right 1.8 -spacing_left 1.8 -offset_right 0.56 -offset_top 0.56 -layer_right TOP_M -nets {VSS VDD } -stacked_via_bottom_layer M1 -layer_left TOP_M

# NOTE: set_to_set_distance should be 90
# create M6 vertical power stripes in core area
addStripe -block_ring_top_layer_limit TOP_M -max_same_layer_jog_length 0.88 -padcore_ring_bottom_layer_limit M5 -set_to_set_distance 70 -stacked_via_top_layer TOP_M -padcore_ring_top_layer_limit TOP_M -spacing 1.8 -merge_stripes_value 0.56 -layer TOP_M -block_ring_bottom_layer_limit M5 -width 8 -nets {VSS VDD } -stacked_via_bottom_layer M4

# create M5 horizontal core stripes in core area, connect M5 to M6
addStripe -block_ring_top_layer_limit TOP_M -max_same_layer_jog_length 0.88 -padcore_ring_bottom_layer_limit M4 -set_to_set_distance 70 -stacked_via_top_layer TOP_M -padcore_ring_top_layer_limit TOP_M -spacing 1.8 -merge_stripes_value 0.56 -direction horizontal -layer M5 -block_ring_bottom_layer_limit M4 -width 8 -nets {VSS VDD } -stacked_via_bottom_layer M4

# create M4 vertical power stripes in core area, connect M5 to M4
addStripe -block_ring_top_layer_limit M5 -max_same_layer_jog_length 0.88 -padcore_ring_bottom_layer_limit M3 -set_to_set_distance 70 -stacked_via_top_layer TOP_M -padcore_ring_top_layer_limit M5 -spacing 1.8 -xleft_offset 3 -xright_offset 3 -merge_stripes_value 0.56 -layer M4 -block_ring_bottom_layer_limit M3 -width 5 -nets {VSS VDD } -stacked_via_bottom_layer M4

# connect power pads to the core ring
# CONNECT ONLY IN VIRTUOSO!!!

source ../scripts/placetaps.src

