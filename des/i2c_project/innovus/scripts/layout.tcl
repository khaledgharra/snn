puts "############### sourcing layout.tcl ###############"
#Floorplan:
source ../scripts/floorplan.tcl
#source ../scripts/route_block.tcl

#Placement:
source ../scripts/placement.tcl
source ../scripts/tie.tcl

optDesign -preCTS
saveDesign preCTS.enc

#CTS:
source ../scripts/cts.tcl

optDesign -postCTS
saveDesign postCTS_final.enc

# Sroute
source ../scripts/sroute.tcl

#Route:
source ../scripts/route_block.tcl
source ../scripts/route.tcl
optDesign -hold -postRoute
optDesign -setup -postRoute
saveDesign postRoute.enc

#ECO:
set filename "../report/postRoute.rpt"
redirect $filename { timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix top_postRoute -outDir ../report/ }
redirect -append $filename { timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix top_postRoute -outDir ../report/ }
source ../scripts/power_analysis.tcl

#Save netlist with these flags. Needed for Prime Time:
saveNetlist ../dataout/eco/top_post_layout.v -topModuleFirst -flat -removePowerGround

source ../scripts/xt.tcl


# Run after ECO:
source ../scripts/fill.tcl
saveNetlist ../dataout/final/top_post_layout.v
streamOut ../dataout/final/top.gds -mapFile /tools/kits/tower/TS18SL_6_01/tsl18fs190svt_Rev_2019.09/tech/lef/6M1L/gds2_fe_6l.map -libName DesignLib -units 1000 -mode ALL
saveDesign postFillers_postEco.enc


#Run Before ECO for Virtuoso debug:
#saveDesign postRoute_preEco_final.enc
#source ../scripts/fill.tcl
#saveNetlist ../dataout/pre_eco/top_post_layout_final.v
#streamOut ../dataout/pre_eco/top_final.gds -mapFile /tools/kits/tower/TS18SL_6_01/tsl18fs190svt_Rev_2019.09/tech/lef/6M1L/gds2_fe_6l.map -libName DesignLib -units 1000 -mode ALL
#saveDesign postFillers_preEco_final.enc


