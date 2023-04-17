o
source ../scripts/floorplan-macros-innovus.tcl
createPlaceBlockage -allMacro -excludeFlops -name place_blockage_partial -type partial -density 20 -outerRingBySide {14 14 14 14}
set_db [ get_db insts -if ".is_black_box==true" ] .place_status placed
setPlaceMode -place_design_floorplan_mode true
set_db [ get_db insts -if ".is_black_box==false" ] .place_status unplaced
setPlaceMode -place_global_max_density 0.75
setPlaceMode -fp true
place_design -noPrePlaceOpt

globalRoute

checkFPlan -reportUtil

summaryReport -noHtml -outfile summary.rpt
