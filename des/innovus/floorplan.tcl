#============================================================
# i2c_master_top — Floorplan + Power Planning
# Matches GUI settings from screenshots exactly
# Usage:  source floorplan.tcl
#============================================================

puts "=== STEP 1: Floorplan ==="
# Die=1799.84x1799.84, Core to IO boundary, margins ~75um
floorPlan -site CoreSite -d 1799.84 1799.84 75.6 75.6 75.04 75.04

puts "=== STEP 2: Connect global power/ground nets ==="
source glnets.src
deselectAll

puts "=== STEP 3: Add power ring (Along I/O boundary) ==="
# TOP_M(6V) top/bottom, M5(5H) left/right
# Width=6, Spacing=1.8, Center in channel
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
    -follow io \
    -layer {top TOP_M bottom TOP_M left M5 right M5} \
    -width 6 \
    -spacing 1.8 \
    -center 1 \
    -jog_distance 0.56 \
    -threshold 0.56

puts "=== STEP 4: Add horizontal power stripes (M4) ==="
# M4, Horizontal, Width=6, Spacing=1.8, set-to-set=100
# Stripe boundary: Core ring, Start from Bottom
addStripe \
    -nets {VDD VSS} \
    -layer M4 \
    -direction horizontal \
    -width 6 \
    -spacing 1.8 \
    -set_to_set_distance 100 \
    -extend_to first_padring \
    -start_from bottom \
    -stacked_via_top_layer TOP_M \
    -stacked_via_bottom_layer M1

puts "=== STEP 5: Add vertical power stripes (M4) ==="
# M4, Vertical, Width=6, Spacing=1.8, set-to-set=100
# Stripe boundary: Core ring, Start from Left
addStripe \
    -nets {VDD VSS} \
    -layer M4 \
    -direction vertical \
    -width 6 \
    -spacing 1.8 \
    -set_to_set_distance 100 \
    -extend_to first_padring \
    -start_from left \
    -stacked_via_top_layer TOP_M \
    -stacked_via_bottom_layer M1

puts "=== STEP 6: Add routing blockage M3-TOP_M in IO pad ring area ==="
# Blocks signal routing on upper layers inside the IO pad cells
set die_w 1799.84
set die_h 1799.84
set pad_h 320.0
createRouteBlk -name blk_io_south -layer {M3 M4 M5 TOP_M} \
    -box [list 0 0 $die_w $pad_h]
createRouteBlk -name blk_io_north -layer {M3 M4 M5 TOP_M} \
    -box [list 0 [expr {$die_h - $pad_h}] $die_w $die_h]
createRouteBlk -name blk_io_west -layer {M3 M4 M5 TOP_M} \
    -box [list 0 $pad_h $pad_h [expr {$die_h - $pad_h}]]
createRouteBlk -name blk_io_east -layer {M3 M4 M5 TOP_M} \
    -box [list [expr {$die_w - $pad_h}] $pad_h $die_w [expr {$die_h - $pad_h}]]

puts "=== STEP 7: Route power to standard cell pins and pad pins ==="
sroute \
    -connect { corePin padPin padRing } \
    -layerChangeRange { M1 TOP_M } \
    -blockPinTarget { nearestTarget } \
    -padPinPortConnect { allPort } \
    -nets { VDD VSS }

puts "=== Floorplan + Power Planning DONE ==="
puts "Next: placeDesign, then routeDesign"
