puts "################## sourcing route.tcl ##################"

# Nano Router default settings 
setNanoRouteMode -quiet -routeTopRoutingLayer default 
setNanoRouteMode -quiet -routeBottomRoutingLayer default 
# Without the following line, many DRC violations appear
setNanoRouteMode -quiet -drouteEndIteration default 
setNanoRouteMode -quiet -routeWithTimingDriven false 
setNanoRouteMode -quiet -routeWithSiDriven false  

# run nano router
routeDesign -globalDetail  
#
# configure post CTS optimization  
# -effort high 
# minimize area if timing is meet -reclaimArea true 
# optimize netlist -simplifyNetlist true 
# set max  density to 0.95 -maxDensity 0.95 
#
setOptMode -effort high -powerEffort none  -leakageToDynamicRatio 0.1 -yieldEffort none -reclaimArea true -simplifyNetlist true -setupTargetSlack 0 -holdTargetSlack 0 -maxDensity 0.95 -drcMargin 0 -usefulSkew false 
setOptMode -fixCap true -fixTran true -fixFanoutLoad false  
# run post route optimization  
setAnalysisMode -analysisType onChipVariation -cppr both
