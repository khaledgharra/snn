#============================================================
# i2c_master_top — Floorplan + Power Planning
# Source this in Innovus after File -> Import Design
# Usage:  source floorplan.tcl
#============================================================

puts "=== STEP 1: Floorplan ==="
# Die = 1588.08 x 1588.08 um, margins = 10 um on all sides
# Reduced from 4980 um: now 10 pads per side (removed I3, I35, 4 decap pairs)
floorPlan -site CoreSite -d 1588.08 1588.08 10 10 10 10

puts "=== STEP 2: Connect global power/ground nets ==="
source glnets.src
deselectAll

puts "=== STEP 3: Add power ring around core ==="
# TOP_M (M6) horizontal top/bottom, M5 vertical left/right
# 8 um wide, 1.8 um spacing, stacked vias M1-TOP_M
setAddRingMode \
    -ring_target default \
    -extend_over_row 0 \
    -ignore_rows 0 \
    -avoid_short 0 \
    -skip_crossing_trunks none \
    -stacked_via_top_layer TOP_M \
    -stacked_via_bottom_layer M1 \
    -via_using_exact_crossover_size 1 \
    -orthogonal_only true \
    -skip_via_on_pin { standardcell } \
    -skip_via_on_wire_shape { noshape }

addRing \
    -spacing_bottom 1.8 \
    -width_left 8 \
    -width_bottom 8 \
    -width_top 8 \
    -spacing_top 1.8 \
    -layer_bottom M5 \
    -center 1 \
    -stacked_via_top_layer TOP_M \
    -width_right 8 \
    -around default_power_domain \
    -jog_distance 0.56 \
    -offset_bottom 0.56 \
    -layer_top M5 \
    -threshold 0.56 \
    -offset_left 0.56 \
    -spacing_right 1.8 \
    -spacing_left 1.8 \
    -offset_right 0.56 \
    -offset_top 0.56 \
    -layer_right TOP_M \
    -nets {VSS VDD} \
    -stacked_via_bottom_layer M1 \
    -layer_left TOP_M

puts "=== STEP 4: Add vertical power stripes (TOP_M / M6) ==="
# TOP_M vertical stripes, 8 um wide, 1.8 um spacing, every 70 um
addStripe \
    -block_ring_top_layer_limit TOP_M \
    -max_same_layer_jog_length 0.88 \
    -padcore_ring_bottom_layer_limit M5 \
    -set_to_set_distance 70 \
    -stacked_via_top_layer TOP_M \
    -padcore_ring_top_layer_limit TOP_M \
    -spacing 1.8 \
    -merge_stripes_value 0.56 \
    -layer TOP_M \
    -block_ring_bottom_layer_limit M5 \
    -width 8 \
    -nets {VSS VDD} \
    -stacked_via_bottom_layer M4

puts "=== STEP 5: Add horizontal power stripes (M5) ==="
# M5 horizontal stripes, connects to TOP_M vertical
addStripe \
    -block_ring_top_layer_limit TOP_M \
    -max_same_layer_jog_length 0.88 \
    -padcore_ring_bottom_layer_limit M4 \
    -set_to_set_distance 70 \
    -stacked_via_top_layer TOP_M \
    -padcore_ring_top_layer_limit TOP_M \
    -spacing 1.8 \
    -merge_stripes_value 0.56 \
    -direction horizontal \
    -layer M5 \
    -block_ring_bottom_layer_limit M4 \
    -width 8 \
    -nets {VSS VDD} \
    -stacked_via_bottom_layer M4

puts "=== STEP 6: Add vertical power stripes (M4) ==="
# M4 vertical stripes, connects M5 down to M3 level
addStripe \
    -block_ring_top_layer_limit M5 \
    -max_same_layer_jog_length 0.88 \
    -padcore_ring_bottom_layer_limit M3 \
    -set_to_set_distance 70 \
    -stacked_via_top_layer TOP_M \
    -padcore_ring_top_layer_limit M5 \
    -spacing 1.8 \
    -xleft_offset 3 \
    -xright_offset 3 \
    -merge_stripes_value 0.56 \
    -layer M4 \
    -block_ring_bottom_layer_limit M3 \
    -width 5 \
    -nets {VSS VDD} \
    -stacked_via_bottom_layer M4

puts "=== Floorplan + Power Planning DONE ==="
puts "Check: Power->Power Planning->Verify Power Grid"
puts "Next:  Place->Place Standard Cell (max density 0.40)"
