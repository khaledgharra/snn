#============================================================
# i2c_master_top — Floorplan + Power Planning
# Follows ExecBE.pdf lab instructions exactly
# Usage:  source floorplan.tcl
#============================================================

puts "=== STEP 1: Floorplan ==="
floorPlan -site CoreSite -d 1588.08 1588.08 10 10 10 10

puts "=== STEP 2: Connect global power/ground nets ==="
source glnets.src
deselectAll

puts "=== STEP 3: Add power ring (along IO boundary) ==="
# Per ExecBE.pdf:
#   TOP_M = top, bottom   (horizontal segments)
#   M5    = left, right   (vertical segments)
#   Width = 6, Spacing = 1.8, Centre of Channel
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
    -follow io \
    -layer {top TOP_M bottom TOP_M left M5 right M5} \
    -width 6 \
    -spacing 1.8 \
    -center 1 \
    -jog_distance 0.56 \
    -threshold 0.56

puts "=== STEP 4: Add power stripes (M5, per ExecBE.pdf) ==="
# Per ExecBE.pdf:
#   Layer=M5, Width=6, Spacing=1.8
#   Set-to-set distance=100
#   Absolute: Start=330, Stop=1000
addStripe \
    -nets {VSS VDD} \
    -layer M5 \
    -direction horizontal \
    -width 6 \
    -spacing 1.8 \
    -set_to_set_distance 100 \
    -start_from bottom \
    -start_offset 330 \
    -stop_offset 1000 \
    -stacked_via_top_layer TOP_M \
    -stacked_via_bottom_layer M1

puts "=== STEP 5: Route power to standard cell pins and pad pins ==="
sroute \
    -connect { corePin padPin padRing } \
    -layerChangeRange { M1 TOP_M } \
    -blockPinTarget { nearestTarget } \
    -padPinPortConnect { allPort } \
    -nets { VDD VSS }

puts "=== Floorplan + Power Planning DONE ==="
puts "Next: placeDesign, then routeDesign"
