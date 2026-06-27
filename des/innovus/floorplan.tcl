#============================================================
# i2c_master_top — Floorplan + Power Planning
# Matches GUI settings from screenshots exactly
# Usage:  source floorplan.tcl
#============================================================

puts "=== STEP 1: Floorplan ==="
floorPlan -site CoreSite -d 1799.84 1799.84 75.6 75.6 75.04 75.04

puts "=== STEP 2: Connect global power/ground nets ==="
source glnets.src
deselectAll

puts "=== STEP 3: Add power ring ==="
# As per lab instructions (ExecBE):
# top/bottom: TOP_M, left/right: M5, Centre of Channel offset
setAddRingMode \
    -ring_target default \
    -extend_over_row 0 \
    -ignore_rows 0 \
    -avoid_short 0 \
    -skip_crossing_trunks none \
    -stacked_via_top_layer TOP_M \
    -stacked_via_bottom_layer M1 \
    -orthogonal_only true \
    -skip_via_on_pin { standardcell } \
    -skip_via_on_wire_shape { noshape }

addRing \
    -nets {VDD VSS} \
    -around default_power_domain \
    -layer {top TOP_M bottom TOP_M left M5 right M5} \
    -width 6 \
    -spacing 1.8 \
    -center 1 \
    -jog_distance 0.56 \
    -threshold 0.56

puts "=== STEP 4: Add vertical power stripes (M5) ==="
# As per lab instructions: M5 vertical stripes, set_to_set 100, start 330 stop 1000
addStripe \
    -nets {VDD VSS} \
    -layer M5 \
    -direction vertical \
    -width 6 \
    -spacing 1.8 \
    -set_to_set_distance 100 \
    -start_from left \
    -start_offset 330 \
    -stop_offset 1000 \
    -stacked_via_top_layer TOP_M \
    -stacked_via_bottom_layer M1

puts "=== STEP 5: Route power to standard cell pins ==="
sroute \
    -connect { corePin padRing } \
    -layerChangeRange { M1 M5 } \
    -blockPinTarget { nearestTarget } \
    -padPinPortConnect { allPort } \
    -nets { VDD VSS }

puts "=== Floorplan + Power Planning DONE ==="
puts "Next: placeDesign, then routeDesign"
