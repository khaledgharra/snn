addFiller -cell FILLER_X32_18_SVT -prefix FILLER -fillBoundary
addFiller -cell FILLER_X16_18_SVT -prefix FILLER -fillBoundary
addFiller -cell FILLER_X8_18_SVT -prefix FILLER -fillBoundary
addFiller -cell FILLER_X4_18_SVT -prefix FILLER -fillBoundary
addFiller -cell FILLER_X2_18_SVT -prefix FILLER -fillBoundary
addFiller -cell FILLER_X1_18_SVT -prefix FILLER -fillBoundary
setNanoRouteMode -quiet -timingEngine {}
setNanoRouteMode -quiet -routeWithEco 1
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail

