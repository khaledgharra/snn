set VDD_pad_type "PVDF_18_18"
set VSS_pad_type "PV0F_18_18"
set offset_VDD_b 22
set offset_VSS_b 32

set offset_VDD_u 24
set offset_VSS_u 34

set offset_VDD_r 22
set offset_VSS_r 32

set offset_VDD_l 22
set offset_VSS_l 32

set VSS_pads [dbGet -p2 top.insts.cell.name $VSS_pad_type]
set VDD_pads [dbGet -p2 top.insts.cell.name $VDD_pad_type]

foreach pad $VSS_pads {
	set orient [dbGet $pad.orient]
	if { $orient == "R0" } {
		createRouteBlk -box [expr [dbGet $pad.box_llx]] [expr [dbGet $pad.box_ury]] [expr [dbGet $pad.box_urx]] [expr [dbGet $pad.box_ury] + $offset_VSS_b] -layer M2
	}
	if { $orient == "R180" } {
		createRouteBlk -box [expr [dbGet $pad.box_llx]] [expr [dbGet $pad.box_lly] - $offset_VSS_u] [expr [dbGet $pad.box_urx]] [expr [dbGet $pad.box_lly]] -layer M2
	}
	if { $orient == "R90" } {
		createRouteBlk -box [expr [dbGet $pad.box_llx] - $offset_VSS_r] [expr [dbGet $pad.box_lly]] [expr [dbGet $pad.box_llx]] [expr [dbGet $pad.box_ury]] -layer M2
	}
	if { $orient == "R270" } {
		createRouteBlk -box [expr [dbGet $pad.box_urx]] [expr [dbGet $pad.box_lly]] [expr [dbGet $pad.box_urx] + $offset_VSS_l] [expr [dbGet $pad.box_ury]] -layer M2
	}
}

foreach pad $VDD_pads {
	set orient [dbGet $pad.orient]
	if { $orient == "R0" } {
		createRouteBlk -box [expr [dbGet $pad.box_llx]] [expr [dbGet $pad.box_ury]] [expr [dbGet $pad.box_urx]] [expr [dbGet $pad.box_ury] + $offset_VDD_b] -layer M2
	}
	if { $orient == "R180" } {
		createRouteBlk -box [expr [dbGet $pad.box_llx]] [expr [dbGet $pad.box_lly] - $offset_VDD_u] [expr [dbGet $pad.box_urx]] [expr [dbGet $pad.box_lly]] -layer M2
	}
	if { $orient == "R90" } {
		createRouteBlk -box [expr [dbGet $pad.box_llx] - $offset_VDD_r] [expr [dbGet $pad.box_lly]] [expr [dbGet $pad.box_llx]] [expr [dbGet $pad.box_ury]] -layer M2
	}
	if { $orient == "R270" } {
		createRouteBlk -box [expr [dbGet $pad.box_urx]] [expr [dbGet $pad.box_lly]] [expr [dbGet $pad.box_urx] + $offset_VDD_l] [expr [dbGet $pad.box_ury]] -layer M2
	}

}
