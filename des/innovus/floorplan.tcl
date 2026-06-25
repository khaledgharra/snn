#============================================================
# i2c_master_top — Floorplan + Power Planning
# Follows ExecBE.pdf lab instructions (TS18SL 0.18um)
# Usage:  source floorplan.tcl
#============================================================

puts "=== STEP 1: Floorplan ==="
floorPlan -site CoreSite -d 1588.08 1588.08 10 10 10 10

puts "=== STEP 2: Connect global power/ground nets ==="
source glnets.src
deselectAll

puts "=== STEP 3: Add power ring around core ==="
# Per ExecBE.pdf: TOP_M (vertical) for left/right, M5 (horizontal) for top/bottom
# Width=8, spacing=1.8, offset=1.8, stacked vias M1-TOP_M
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
    -nets {VSS VDD} \
    -around default_power_domain \
    -layer {top M5 bottom M5 left TOP_M right TOP_M} \
    -width 8 \
    -spacing 1.8 \
    -offset 1.8 \
    -center 1 \
    -jog_distance 0.56 \
    -threshold 0.56

puts "=== STEP 4: Add power stripes (M5 horizontal) ==="
# Per ExecBE.pdf: M5 stripes, width=1, set-to-set distance=100
addStripe \
    -nets {VSS VDD} \
    -layer M5 \
    -direction horizontal \
    -width 1 \
    -spacing 1.8 \
    -set_to_set_distance 100 \
    -start_from bottom \
    -stop_at first_last_and_ring \
    -stacked_via_top_layer TOP_M \
    -stacked_via_bottom_layer M1

puts "=== STEP 5: Route special nets (power to std cell pins) ==="
sroute \
    -connect { corePin padPin padRing } \
    -layerChangeRange { M1 TOP_M } \
    -blockPinTarget { nearestTarget } \
    -padPinPortConnect { allPort } \
    -nets { VDD VSS }

puts "=== Floorplan + Power Planning DONE ==="
puts "Next: placeDesign, then routeDesign"
