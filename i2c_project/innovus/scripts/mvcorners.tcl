# place corners in correct place.
placeInstance Pcornerll/I1 75.0 75.0 R270
placeInstance Pcornerul/I1 75.0 [expr [dbGet top.fPlan.box_sizey] - 75 - 235.04] R180
placeInstance Pcornerur/I1 [expr [dbGet top.fPlan.box_sizex] - 75 - 235.04] [expr [dbGet top.fPlan.box_sizey] - 75 - 235.04]  R90
placeInstance Pcornerlr/I1 [expr [dbGet top.fPlan.box_sizex] - 75 - 235.04] 75 R0

source ../scripts/iofill.src

set VDD_pad_type "PVDF_18_18"
set VSS_pad_type "PV0F_18_18"
set io_pad_type "PIOH_18_18"
set filler0001_pad_type "PFILL0001_NA_NA"
set filler0010_pad_type "PFILL0010_NA_NA"

set VSS_pads [dbGet -p2 top.insts.cell.name $VSS_pad_type]
set VDD_pads [dbGet -p2 top.insts.cell.name $VDD_pad_type]
set io_pads [dbGet -p2 top.insts.cell.name $io_pad_type]
set filler0001_pads [dbGet -p2 top.insts.cell.name $filler0001_pad_type]
set filler0010_pads [dbGet -p2 top.insts.cell.name $filler0010_pad_type]

set all_pads [concat $VSS_pads $VDD_pads $io_pads $filler0001_pads $filler0010_pads] 

foreach pad $all_pads {
	set orient [dbGet $pad.orient]
	if { $orient == "R180" } {
		selectInst $pad
	}
}
selectInst Pcornerul/I1
spaceIoInst -fixSide left -space 0
source ../scripts/iofill.src
deselectAll

foreach pad $all_pads {
	set orient [dbGet $pad.orient]
	if { $orient == "R0" } {
		selectInst $pad
	}
}
selectInst Pcornerlr/I1
spaceIoInst -fixSide right -space 0
source ../scripts/iofill.src
deselectAll

foreach pad $all_pads {
	set orient [dbGet $pad.orient]
	if { $orient == "R270" } {
		selectInst $pad
	}

}
selectInst Pcornerll/I1
spaceIoInst -fixSide bottom -space 0
source ../scripts/iofill.src
deselectAll

foreach pad $all_pads {
	set orient [dbGet $pad.orient]
	if { $orient == "R90" } {
		selectInst $pad
	}
}
selectInst Pcornerur/I1
spaceIoInst -fixSide top -space 0
source ../scripts/iofill.src
deselectAll

