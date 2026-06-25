if { [is_common_ui_mode]==1 } {
    set_db  add_tieoffs_cells {TIEL_18_SVT TIEH_18_SVT}
} else {
    setTieHiLoMode -cell {TIEL_18_SVT TIEH_18_SVT}
}
if { [is_common_ui_mode]==1 } {
    set_db add_tieoffs_max_fanout 4 
} else {
    setTieHiLoMode -maxFanOut 4 
}
if { [is_common_ui_mode]==1 } {
    set_db add_tieoffs_max_distance 10  
} else {
    setTieHiLoMode -maxDistance 10  
}
if { [is_common_ui_mode]==1 } {
    set_db add_tieoffs_prefix TIEOFF 
} else {
    setTieHiLoMode -prefix TIEOFF 
}
if { [is_common_ui_mode]==1 } {
    add_tieoffs
} else {
    addTieHiLo
}
