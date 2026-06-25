
puts "############### sourcing placement.tcl ###############"
# configure placer:
# enable routing congestion driven placement -congEffort high
# enable timing driven placement -timingDriven 1
# enable routing congestion optimization -doCongOpt 1
# unblock std cells pins -checkPinLayerForAccess { 1 }
setPlaceMode -reset
setPlaceMode -congEffort high -timingDriven 1 -modulePlan 1 -doCongOpt 1 -clkGateAware 0 -powerDriven 0 -ignoreScan 1 -reorderScan 1 -ignoreSpare 1 -placeIOPins 1 -moduleAwareSpare 0 -maxDensity 0.40 -checkPinLayerForAccess { 1 } -preserveRouting 0 -rmAffectedRouting 0 -checkRoute 0 -swapEEQ 0
# enable multi CPU work
setMultiCpuUsage -localCpu 4 -keepLicense true
setPlaceMode -fp false
set delaycal_use_default_delay_limit 1000
# run placement with pre and post placement timing optimization
placeDesign -inPlaceOpt -prePlaceOpt
