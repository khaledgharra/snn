#============================================================
# i2c_master_top — Floorplan + Power Planning
# Source this in Innovus after init_design
# Usage:  source floorplan.tcl
#============================================================

puts "=== STEP 1: Floorplan ==="
floorPlan -site CoreSite -d 1588.08 1588.08 10 10 10 10

puts "=== STEP 2: Connect global power/ground nets ==="
source glnets.src
deselectAll

puts "=== STEP 3: Add power ring around core ==="
setAddRingMode \
    -ring_target default \
    -extend_over_row 0 \
    -ignore_rows 0 \
    -avoid_short 0 \
    -skip_crossing_trunks none \
    -stacked_via_top_layer M4 \
    -stacked_via_bottom_layer M1 \
    -orthogonal_only true \
    -skip_via_on_pin { standardcell } \
    -skip_via_on_wire_shape { noshape }

addRing \
    -nets {VSS VDD} \
    -around default_power_domain \
    -layer {top M3 bottom M3 left M4 right M4} \
    -width 4 \
    -spacing 1.8 \
    -offset 0.56 \
    -center 1 \
    -jog_distance 0.56 \
    -threshold 0.56

puts "=== Floorplan + Power Planning DONE ==="
puts "Next: placeDesign, then routeDesign"
