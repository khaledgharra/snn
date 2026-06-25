set filler0001_pad_type "PFILL0001_NA_NA"
set filler0010_pad_type "PFILL0010_NA_NA"
set filler0001_pad_name [dbGet -p2 top.insts.cell.name $filler0001_pad_type]
set filler0010_pad_name [dbGet -p2 top.insts.cell.name $filler0010_pad_type]
set all_pads [concat $filler0010_pad_name $filler0001_pad_name]
set x_right [expr [dbGet top.fPlan.box_sizex] - 75 - 235.04]
set x_left 75.0
set y_top [expr [dbGet top.fPlan.box_sizey] - 75 - 235.04]
set y_bottom 75.0

foreach pad $all_pads {
	set orient [dbGet $pad.orient]
	if { $orient == "R90" } {
		placeInstance $pad $x_right [dbGet $pad.box_lly] R90 
	}
	if { $orient == "R270" } {
		placeInstance $pad $x_left [dbGet $pad.box_lly] R270 
	}
	if { $orient == "R0" } {
		placeInstance $pad [dbGet $pad.box_llx] $y_bottom R0 
	}
	if { $orient == "R180" } {
		placeInstance $pad [dbGet $pad.box_llx] $y_top R180 
	}
}


