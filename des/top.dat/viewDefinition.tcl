if {![namespace exists ::IMEX]} { namespace eval ::IMEX {} }
set ::IMEX::dataVar [file dirname [file normalize [info script]]]
set ::IMEX::libVar ${::IMEX::dataVar}/libs

create_library_set -name Max\
   -timing\
    [list ${::IMEX::libVar}/mmmc/tsl18fs120_max.lib\
    ${::IMEX::libVar}/mmmc/PIO320SL_ss_1p62v_1p62v_125c.lib]
create_library_set -name Typ\
   -timing\
    [list ${::IMEX::libVar}/mmmc/tsl18fs120_typ.lib\
    ${::IMEX::libVar}/mmmc/PIO320SL_tt_1p8v_1p8v_25c.lib]
create_library_set -name Min\
   -timing\
    [list ${::IMEX::libVar}/mmmc/tsl18fs120_min.lib\
    ${::IMEX::libVar}/mmmc/PIO320SL_ff_1p98v_1p98v_m40c.lib]
create_rc_corner -name SlowRC\
   -cap_table ${::IMEX::libVar}/mmmc/TSL_0.18_6M1L.CapTbl\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -T 125\
   -qx_tech_file ${::IMEX::libVar}/mmmc/SlowRC/qrcTechFile
create_rc_corner -name FastRC\
   -cap_table ${::IMEX::libVar}/mmmc/TSL_0.18_6M1L.CapTbl\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -T -40\
   -qx_tech_file ${::IMEX::libVar}/mmmc/SlowRC/qrcTechFile
create_delay_corner -name SlowDC\
   -library_set Max\
   -rc_corner SlowRC
create_delay_corner -name FastDC\
   -library_set Min\
   -rc_corner FastRC
create_constraint_mode -name TypCM\
   -sdc_files\
    [list ${::IMEX::libVar}/mmmc/TypCM.sdc]
create_analysis_view -name FastView -constraint_mode TypCM -delay_corner FastDC
create_analysis_view -name SlowView -constraint_mode TypCM -delay_corner SlowDC
set_analysis_view -setup [list SlowView] -hold [list FastView]
