remove_gui_marker -all
set VSS_pp_file_name "./VSStest.pp"
set VDD_pp_file_name "./VDDtest.pp"



set VSS_fd [open $VSS_pp_file_name w+]
set VDD_fd [open $VDD_pp_file_name w+]

set VDD_pad_type "PVDF_18_18"
set VSS_pad_type "PV0F_18_18"
set offset_VDD 15
set offset_VSS 25

set VSS_pads [dbGet -p2 top.insts.cell.name $VSS_pad_type]
set VDD_pads [dbGet -p2 top.insts.cell.name $VDD_pad_type]

set i 1

foreach pad $VSS_pads {
	set orient [dbGet $pad.orient]
	if { $orient == "R0" } {
		set metal "M2"
		set src_point "[expr [dbGet $pad.box_urx] - [dbGet $pad.box_sizex] / 2] [expr [dbGet $pad.box_ury] + $offset_VSS]"
		add_gui_marker -pt "$src_point" -color red -name test -type TICK
		puts $VSS_fd "VSSsrc${i} $src_point $metal"
	} elseif { $orient == "R90" } {
		set metal "M2"
		set src_point "[expr [dbGet $pad.box_llx] - $offset_VSS ] [expr [dbGet $pad.box_lly] + [dbGet $pad.box_sizey] / 2]"
		add_gui_marker -pt "$src_point" -color red -name test -type TICK
		puts $VSS_fd "VSSsrc${i} $src_point $metal"
	} elseif { $orient == "R180" } {
		set metal "M2"
		set src_point "[expr [dbGet $pad.box_llx] + [dbGet $pad.box_sizex] / 2] [expr [dbGet $pad.box_lly] - $offset_VSS -3]"
		add_gui_marker -pt "$src_point" -color red -name test -type TICK
		puts $VSS_fd "VSSsrc${i} $src_point $metal"
	} elseif { $orient == "R270" } {
		set metal "M2"
		set src_point "[expr [dbGet $pad.box_urx] + $offset_VSS ] [expr [dbGet $pad.box_ury] - [dbGet $pad.box_sizey] / 2]"
		add_gui_marker -pt "$src_point" -color red -name test -type TICK
		puts $VSS_fd "VSSsrc${i} $src_point $metal"
	}
	incr i
}

set i 1

foreach pad $VDD_pads {
	set orient [dbGet $pad.orient]
	if { $orient == "R0" } {
		set metal "M2"
		set src_point "[expr [dbGet $pad.box_urx] - [dbGet $pad.box_sizex] / 2] [expr [dbGet $pad.box_ury] + $offset_VDD]"
		add_gui_marker -pt "$src_point" -color blue -name test -type TICK
		puts $VDD_fd "VDDsrc${i} $src_point $metal"
	} elseif { $orient == "R90" } {
		set metal "M2"
		set src_point "[expr [dbGet $pad.box_llx] - $offset_VDD ] [expr [dbGet $pad.box_lly] + [dbGet $pad.box_sizey] / 2]"
		add_gui_marker -pt "$src_point" -color blue -name test -type TICK
		puts $VDD_fd "VDDsrc${i} $src_point $metal"
	} elseif { $orient == "R180" } {
		set metal "M2"
		set src_point "[expr [dbGet $pad.box_llx] + [dbGet $pad.box_sizex] / 2] [expr [dbGet $pad.box_lly] - $offset_VDD -3]"
		add_gui_marker -pt "$src_point" -color blue -name test -type TICK
		puts $VDD_fd "VDDsrc${i} $src_point $metal"
	} elseif { $orient == "R270" } {
		set metal "M2"
		set src_point "[expr [dbGet $pad.box_urx] + $offset_VDD ] [expr [dbGet $pad.box_ury] - [dbGet $pad.box_sizey] / 2]"
		add_gui_marker -pt "$src_point" -color blue -name test -type TICK
		puts $VDD_fd "VDDsrc${i} $src_point $metal"
	}
	incr i
}

close $VSS_fd
close $VDD_fd
