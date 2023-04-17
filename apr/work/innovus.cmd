#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Fri Apr 14 23:53:40 2023                
#                                                     
#######################################################

#@(#)CDS: Innovus v19.16-s053_1 (64bit) 08/31/2020 13:16 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: NanoRoute 19.16-s053_1 NR200827-1939/19_16-UB (database version 18.20, 510.7.1) {superthreading v1.53}
#@(#)CDS: AAE 19.16-s019 (64bit) 08/31/2020 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: CTE 19.16-s019_1 () Aug 22 2020 00:37:42 ( )
#@(#)CDS: SYNTECH 19.16-s010_1 () Aug 17 2020 09:10:13 ( )
#@(#)CDS: CPE v19.16-s038
#@(#)CDS: IQuantus/TQuantus 19.1.3-s268 (64bit) Mon Aug 10 22:57:12 PDT 2020 (Linux 2.6.32-431.11.2.el6.x86_64)

alias fs set top_design fifo1_sram
alias f set top_design fifo1
alias o set top_design ORCA_TOP
alias e set top_design ExampleRocketSystem
set_table_style -name report_timing -max_widths { 8,6,23,70} -no_frame_fix_width
set_global report_timing_format  {delay arrival slew cell hpin}
set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
win
o
set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
set search_path {}
set init_lef_file {../../cadence_cap_tech/tech.lef saed32nm_lvt_1p9m.lef saed32nm_hvt_1p9m.lef saed32nm_rvt_1p9m.lef saed32sram.lef}
set init_mmmc_file mmmc.tcl
set init_design_netlisttype Verilog
set init_verilog ../../syn/outputs/ORCA_TOP.genus.vg
set init_top_cell ORCA_TOP
set init_pwr_net VDD
set init_gnd_net VSS
init_design
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
floorPlan -s 1000 800 10 10 10 10 -flip s -coreMarginsBy io
read_power_intent ../../syn/outputs/ORCA_TOP.genus.upf -1801
commit_power_intent
modifyPowerDomainAttr PD_RISC_CORE -box 580 0 1000 400
setNanoRouteMode -drouteEndIteration 10
set_ccopt_property target_max_trans 0.3ns
setNanoRouteMode -drouteEndIteration 5
setNanoRouteMode -routeWithViaOnlyForMacroCellPin false
setNanoRouteMode -routeWithViaOnlyForStandardCellPin 1:1
setOptMode -usefulSkew false
setOptMode -usefulSkewCCOpt none
setOptMode -usefulSkewPostRoute false
setOptMode -usefulSkewPreCTS false
setPinAssignMode -pinEditInBatch true
get_message -id GLOBAL-100 -suppress
get_message -id GLOBAL-100 -suppress
editPin -edge 3 -pin {sdram_clk sys_2x_clk shutdown test_mode test_si[5] test_si[4] test_si[3] test_si[2] test_si[1] test_si[0] test_so[5] test_so[4] test_so[3] test_so[2] test_so[1] test_so[0] scan_enable ate_clk occ_bypass occ_reset pclk prst_n pidsel pgnt_n pad_in[31] pad_in[30] pad_in[29] pad_in[28] pad_in[27] pad_in[26] pad_in[25] pad_in[24] pad_in[23] pad_in[22] pad_in[21] pad_in[20] pad_in[19] pad_in[18] pad_in[17] pad_in[16] pad_in[15] pad_in[14] pad_in[13] pad_in[12] pad_in[11] pad_in[10] pad_in[9] pad_in[8] pad_in[7] pad_in[6] pad_in[5] pad_in[4] pad_in[3] pad_in[2] pad_in[1] pad_in[0] pad_out[31] pad_out[30] pad_out[29] pad_out[28] pad_out[27] pad_out[26] pad_out[25] pad_out[24] pad_out[23] pad_out[22] pad_out[21] pad_out[20] pad_out[19] pad_out[18] pad_out[17] pad_out[16] pad_out[15] pad_out[14] pad_out[13] pad_out[12] pad_out[11] pad_out[10] pad_out[9] pad_out[8] pad_out[7] pad_out[6] pad_out[5] pad_out[4] pad_out[3] pad_out[2] pad_out[1] pad_out[0] pad_en ppar_in ppar_out ppar_en pc_be_in[3] pc_be_in[2] pc_be_in[1] pc_be_in[0] pc_be_out[3] pc_be_out[2] pc_be_out[1] pc_be_out[0] pc_be_en pframe_n_in pframe_n_out pframe_n_en ptrdy_n_in ptrdy_n_out ptrdy_n_en pirdy_n_in pirdy_n_out pirdy_n_en pdevsel_n_in pdevsel_n_out pdevsel_n_en pstop_n_in pstop_n_out pstop_n_en pperr_n_in pperr_n_out pperr_n_en pserr_n_in pserr_n_out pserr_n_en preq_n pack_n} -layer M6 -spreadDirection counterclockwise -spreadType START -offsetStart 500 -spacing 1 -unit MICRON -fixedPin 1
get_message -id GLOBAL-100 -suppress
get_message -id GLOBAL-100 -suppress
editPin -edge 3 -pin {pm66en sd_A[9] sd_A[8] sd_A[7] sd_A[6] sd_A[5] sd_A[4] sd_A[3] sd_A[2] sd_A[1] sd_A[0] sd_CK sd_CKn sd_LD sd_RW sd_BWS[1] sd_BWS[0] sd_DQ_in[31] sd_DQ_in[30] sd_DQ_in[29] sd_DQ_in[28] sd_DQ_in[27] sd_DQ_in[26] sd_DQ_in[25] sd_DQ_in[24] sd_DQ_in[23] sd_DQ_in[22] sd_DQ_in[21] sd_DQ_in[20] sd_DQ_in[19] sd_DQ_in[18] sd_DQ_in[17] sd_DQ_in[16] sd_DQ_in[15] sd_DQ_in[14] sd_DQ_in[13] sd_DQ_in[12] sd_DQ_in[11] sd_DQ_in[10] sd_DQ_in[9] sd_DQ_in[8] sd_DQ_in[7] sd_DQ_in[6] sd_DQ_in[5] sd_DQ_in[4] sd_DQ_in[3] sd_DQ_in[2] sd_DQ_in[1] sd_DQ_in[0] sd_DQ_out[31] sd_DQ_out[30] sd_DQ_out[29] sd_DQ_out[28] sd_DQ_out[27] sd_DQ_out[26] sd_DQ_out[25] sd_DQ_out[24] sd_DQ_out[23] sd_DQ_out[22] sd_DQ_out[21] sd_DQ_out[20] sd_DQ_out[19] sd_DQ_out[18] sd_DQ_out[17] sd_DQ_out[16] sd_DQ_out[15] sd_DQ_out[14] sd_DQ_out[13] sd_DQ_out[12] sd_DQ_out[11] sd_DQ_out[10] sd_DQ_out[9] sd_DQ_out[8] sd_DQ_out[7] sd_DQ_out[6] sd_DQ_out[5] sd_DQ_out[4] sd_DQ_out[3] sd_DQ_out[2] sd_DQ_out[1] sd_DQ_out[0] sd_DQ_en[31] sd_DQ_en[30] sd_DQ_en[29] sd_DQ_en[28] sd_DQ_en[27] sd_DQ_en[26] sd_DQ_en[25] sd_DQ_en[24] sd_DQ_en[23] sd_DQ_en[22] sd_DQ_en[21] sd_DQ_en[20] sd_DQ_en[19] sd_DQ_en[18] sd_DQ_en[17] sd_DQ_en[16] sd_DQ_en[15] sd_DQ_en[14] sd_DQ_en[13] sd_DQ_en[12] sd_DQ_en[11] sd_DQ_en[10] sd_DQ_en[9] sd_DQ_en[8] sd_DQ_en[7] sd_DQ_en[6] sd_DQ_en[5] sd_DQ_en[4] sd_DQ_en[3] sd_DQ_en[2] sd_DQ_en[1] sd_DQ_en[0] test_mode_1 scan_enable_2 DFT_sdi_1 DFT_sdo_1 DFT_sdi_2 DFT_sdo_2 DFT_sdi_3 DFT_sdo_3 DFT_sdi_4 DFT_sdo_4} -layer M8 -spreadDirection counterclockwise -spreadType START -offsetStart 500 -spacing 1 -unit MICRON -fixedPin 1
setPinAssignMode -pinEditInBatch false
placeAIO -onlyAIO
deselectAll
select_obj [ get_ports * ]
select_obj {port:ORCA_TOP/sdram_clk port:ORCA_TOP/sys_2x_clk port:ORCA_TOP/shutdown port:ORCA_TOP/test_mode {port:ORCA_TOP/test_si[5]} {port:ORCA_TOP/test_si[4]} {port:ORCA_TOP/test_si[3]} {port:ORCA_TOP/test_si[2]} {port:ORCA_TOP/test_si[1]} {port:ORCA_TOP/test_si[0]} {port:ORCA_TOP/test_so[5]} {port:ORCA_TOP/test_so[4]} {port:ORCA_TOP/test_so[3]} {port:ORCA_TOP/test_so[2]} {port:ORCA_TOP/test_so[1]} {port:ORCA_TOP/test_so[0]} port:ORCA_TOP/scan_enable port:ORCA_TOP/ate_clk port:ORCA_TOP/occ_bypass port:ORCA_TOP/occ_reset port:ORCA_TOP/pclk port:ORCA_TOP/prst_n port:ORCA_TOP/pidsel port:ORCA_TOP/pgnt_n {port:ORCA_TOP/pad_in[31]} {port:ORCA_TOP/pad_in[30]} {port:ORCA_TOP/pad_in[29]} {port:ORCA_TOP/pad_in[28]} {port:ORCA_TOP/pad_in[27]} {port:ORCA_TOP/pad_in[26]} {port:ORCA_TOP/pad_in[25]} {port:ORCA_TOP/pad_in[24]} {port:ORCA_TOP/pad_in[23]} {port:ORCA_TOP/pad_in[22]} {port:ORCA_TOP/pad_in[21]} {port:ORCA_TOP/pad_in[20]} {port:ORCA_TOP/pad_in[19]} {port:ORCA_TOP/pad_in[18]} {port:ORCA_TOP/pad_in[17]} {port:ORCA_TOP/pad_in[16]} {port:ORCA_TOP/pad_in[15]} {port:ORCA_TOP/pad_in[14]} {port:ORCA_TOP/pad_in[13]} {port:ORCA_TOP/pad_in[12]} {port:ORCA_TOP/pad_in[11]} {port:ORCA_TOP/pad_in[10]} {port:ORCA_TOP/pad_in[9]} {port:ORCA_TOP/pad_in[8]} {port:ORCA_TOP/pad_in[7]} {port:ORCA_TOP/pad_in[6]} {port:ORCA_TOP/pad_in[5]} {port:ORCA_TOP/pad_in[4]} {port:ORCA_TOP/pad_in[3]} {port:ORCA_TOP/pad_in[2]} {port:ORCA_TOP/pad_in[1]} {port:ORCA_TOP/pad_in[0]} {port:ORCA_TOP/pad_out[31]} {port:ORCA_TOP/pad_out[30]} {port:ORCA_TOP/pad_out[29]} {port:ORCA_TOP/pad_out[28]} {port:ORCA_TOP/pad_out[27]} {port:ORCA_TOP/pad_out[26]} {port:ORCA_TOP/pad_out[25]} {port:ORCA_TOP/pad_out[24]} {port:ORCA_TOP/pad_out[23]} {port:ORCA_TOP/pad_out[22]} {port:ORCA_TOP/pad_out[21]} {port:ORCA_TOP/pad_out[20]} {port:ORCA_TOP/pad_out[19]} {port:ORCA_TOP/pad_out[18]} {port:ORCA_TOP/pad_out[17]} {port:ORCA_TOP/pad_out[16]} {port:ORCA_TOP/pad_out[15]} {port:ORCA_TOP/pad_out[14]} {port:ORCA_TOP/pad_out[13]} {port:ORCA_TOP/pad_out[12]} {port:ORCA_TOP/pad_out[11]} {port:ORCA_TOP/pad_out[10]} {port:ORCA_TOP/pad_out[9]} {port:ORCA_TOP/pad_out[8]} {port:ORCA_TOP/pad_out[7]} {port:ORCA_TOP/pad_out[6]} {port:ORCA_TOP/pad_out[5]} {port:ORCA_TOP/pad_out[4]} {port:ORCA_TOP/pad_out[3]} {port:ORCA_TOP/pad_out[2]} {port:ORCA_TOP/pad_out[1]} {port:ORCA_TOP/pad_out[0]} port:ORCA_TOP/pad_en port:ORCA_TOP/ppar_in port:ORCA_TOP/ppar_out port:ORCA_TOP/ppar_en {port:ORCA_TOP/pc_be_in[3]} {port:ORCA_TOP/pc_be_in[2]} {port:ORCA_TOP/pc_be_in[1]} {port:ORCA_TOP/pc_be_in[0]} {port:ORCA_TOP/pc_be_out[3]} {port:ORCA_TOP/pc_be_out[2]} {port:ORCA_TOP/pc_be_out[1]} {port:ORCA_TOP/pc_be_out[0]} port:ORCA_TOP/pc_be_en port:ORCA_TOP/pframe_n_in port:ORCA_TOP/pframe_n_out port:ORCA_TOP/pframe_n_en port:ORCA_TOP/ptrdy_n_in port:ORCA_TOP/ptrdy_n_out port:ORCA_TOP/ptrdy_n_en port:ORCA_TOP/pirdy_n_in port:ORCA_TOP/pirdy_n_out port:ORCA_TOP/pirdy_n_en port:ORCA_TOP/pdevsel_n_in port:ORCA_TOP/pdevsel_n_out port:ORCA_TOP/pdevsel_n_en port:ORCA_TOP/pstop_n_in port:ORCA_TOP/pstop_n_out port:ORCA_TOP/pstop_n_en port:ORCA_TOP/pperr_n_in port:ORCA_TOP/pperr_n_out port:ORCA_TOP/pperr_n_en port:ORCA_TOP/pserr_n_in port:ORCA_TOP/pserr_n_out port:ORCA_TOP/pserr_n_en port:ORCA_TOP/preq_n port:ORCA_TOP/pack_n port:ORCA_TOP/pm66en {port:ORCA_TOP/sd_A[9]} {port:ORCA_TOP/sd_A[8]} {port:ORCA_TOP/sd_A[7]} {port:ORCA_TOP/sd_A[6]} {port:ORCA_TOP/sd_A[5]} {port:ORCA_TOP/sd_A[4]} {port:ORCA_TOP/sd_A[3]} {port:ORCA_TOP/sd_A[2]} {port:ORCA_TOP/sd_A[1]} {port:ORCA_TOP/sd_A[0]} port:ORCA_TOP/sd_CK port:ORCA_TOP/sd_CKn port:ORCA_TOP/sd_LD port:ORCA_TOP/sd_RW {port:ORCA_TOP/sd_BWS[1]} {port:ORCA_TOP/sd_BWS[0]} {port:ORCA_TOP/sd_DQ_in[31]} {port:ORCA_TOP/sd_DQ_in[30]} {port:ORCA_TOP/sd_DQ_in[29]} {port:ORCA_TOP/sd_DQ_in[28]} {port:ORCA_TOP/sd_DQ_in[27]} {port:ORCA_TOP/sd_DQ_in[26]} {port:ORCA_TOP/sd_DQ_in[25]} {port:ORCA_TOP/sd_DQ_in[24]} {port:ORCA_TOP/sd_DQ_in[23]} {port:ORCA_TOP/sd_DQ_in[22]} {port:ORCA_TOP/sd_DQ_in[21]} {port:ORCA_TOP/sd_DQ_in[20]} {port:ORCA_TOP/sd_DQ_in[19]} {port:ORCA_TOP/sd_DQ_in[18]} {port:ORCA_TOP/sd_DQ_in[17]} {port:ORCA_TOP/sd_DQ_in[16]} {port:ORCA_TOP/sd_DQ_in[15]} {port:ORCA_TOP/sd_DQ_in[14]} {port:ORCA_TOP/sd_DQ_in[13]} {port:ORCA_TOP/sd_DQ_in[12]} {port:ORCA_TOP/sd_DQ_in[11]} {port:ORCA_TOP/sd_DQ_in[10]} {port:ORCA_TOP/sd_DQ_in[9]} {port:ORCA_TOP/sd_DQ_in[8]} {port:ORCA_TOP/sd_DQ_in[7]} {port:ORCA_TOP/sd_DQ_in[6]} {port:ORCA_TOP/sd_DQ_in[5]} {port:ORCA_TOP/sd_DQ_in[4]} {port:ORCA_TOP/sd_DQ_in[3]} {port:ORCA_TOP/sd_DQ_in[2]} {port:ORCA_TOP/sd_DQ_in[1]} {port:ORCA_TOP/sd_DQ_in[0]} {port:ORCA_TOP/sd_DQ_out[31]} {port:ORCA_TOP/sd_DQ_out[30]} {port:ORCA_TOP/sd_DQ_out[29]} {port:ORCA_TOP/sd_DQ_out[28]} {port:ORCA_TOP/sd_DQ_out[27]} {port:ORCA_TOP/sd_DQ_out[26]} {port:ORCA_TOP/sd_DQ_out[25]} {port:ORCA_TOP/sd_DQ_out[24]} {port:ORCA_TOP/sd_DQ_out[23]} {port:ORCA_TOP/sd_DQ_out[22]} {port:ORCA_TOP/sd_DQ_out[21]} {port:ORCA_TOP/sd_DQ_out[20]} {port:ORCA_TOP/sd_DQ_out[19]} {port:ORCA_TOP/sd_DQ_out[18]} {port:ORCA_TOP/sd_DQ_out[17]} {port:ORCA_TOP/sd_DQ_out[16]} {port:ORCA_TOP/sd_DQ_out[15]} {port:ORCA_TOP/sd_DQ_out[14]} {port:ORCA_TOP/sd_DQ_out[13]} {port:ORCA_TOP/sd_DQ_out[12]} {port:ORCA_TOP/sd_DQ_out[11]} {port:ORCA_TOP/sd_DQ_out[10]} {port:ORCA_TOP/sd_DQ_out[9]} {port:ORCA_TOP/sd_DQ_out[8]} {port:ORCA_TOP/sd_DQ_out[7]} {port:ORCA_TOP/sd_DQ_out[6]} {port:ORCA_TOP/sd_DQ_out[5]} {port:ORCA_TOP/sd_DQ_out[4]} {port:ORCA_TOP/sd_DQ_out[3]} {port:ORCA_TOP/sd_DQ_out[2]} {port:ORCA_TOP/sd_DQ_out[1]} {port:ORCA_TOP/sd_DQ_out[0]} {port:ORCA_TOP/sd_DQ_en[31]} {port:ORCA_TOP/sd_DQ_en[30]} {port:ORCA_TOP/sd_DQ_en[29]} {port:ORCA_TOP/sd_DQ_en[28]} {port:ORCA_TOP/sd_DQ_en[27]} {port:ORCA_TOP/sd_DQ_en[26]} {port:ORCA_TOP/sd_DQ_en[25]} {port:ORCA_TOP/sd_DQ_en[24]} {port:ORCA_TOP/sd_DQ_en[23]} {port:ORCA_TOP/sd_DQ_en[22]} {port:ORCA_TOP/sd_DQ_en[21]} {port:ORCA_TOP/sd_DQ_en[20]} {port:ORCA_TOP/sd_DQ_en[19]} {port:ORCA_TOP/sd_DQ_en[18]} {port:ORCA_TOP/sd_DQ_en[17]} {port:ORCA_TOP/sd_DQ_en[16]} {port:ORCA_TOP/sd_DQ_en[15]} {port:ORCA_TOP/sd_DQ_en[14]} {port:ORCA_TOP/sd_DQ_en[13]} {port:ORCA_TOP/sd_DQ_en[12]} {port:ORCA_TOP/sd_DQ_en[11]} {port:ORCA_TOP/sd_DQ_en[10]} {port:ORCA_TOP/sd_DQ_en[9]} {port:ORCA_TOP/sd_DQ_en[8]} {port:ORCA_TOP/sd_DQ_en[7]} {port:ORCA_TOP/sd_DQ_en[6]} {port:ORCA_TOP/sd_DQ_en[5]} {port:ORCA_TOP/sd_DQ_en[4]} {port:ORCA_TOP/sd_DQ_en[3]} {port:ORCA_TOP/sd_DQ_en[2]} {port:ORCA_TOP/sd_DQ_en[1]} {port:ORCA_TOP/sd_DQ_en[0]} port:ORCA_TOP/test_mode_1 port:ORCA_TOP/scan_enable_2 port:ORCA_TOP/DFT_sdi_1 port:ORCA_TOP/DFT_sdo_1 port:ORCA_TOP/DFT_sdi_2 port:ORCA_TOP/DFT_sdo_2 port:ORCA_TOP/DFT_sdi_3 port:ORCA_TOP/DFT_sdo_3 port:ORCA_TOP/DFT_sdi_4 port:ORCA_TOP/DFT_sdo_4}
select_obj {inst:ORCA_TOP/I_CONTEXT_MEM/I_CONTEXT_RAM_0_1 inst:ORCA_TOP/I_CONTEXT_MEM/I_CONTEXT_RAM_0_2 inst:ORCA_TOP/I_CONTEXT_MEM/I_CONTEXT_RAM_0_3 inst:ORCA_TOP/I_CONTEXT_MEM/I_CONTEXT_RAM_0_4 inst:ORCA_TOP/I_CONTEXT_MEM/I_CONTEXT_RAM_1_1 inst:ORCA_TOP/I_CONTEXT_MEM/I_CONTEXT_RAM_1_2 inst:ORCA_TOP/I_CONTEXT_MEM/I_CONTEXT_RAM_1_3 inst:ORCA_TOP/I_CONTEXT_MEM/I_CONTEXT_RAM_1_4 inst:ORCA_TOP/I_CONTEXT_MEM/I_CONTEXT_RAM_2_1 inst:ORCA_TOP/I_CONTEXT_MEM/I_CONTEXT_RAM_2_2 inst:ORCA_TOP/I_CONTEXT_MEM/I_CONTEXT_RAM_2_3 inst:ORCA_TOP/I_CONTEXT_MEM/I_CONTEXT_RAM_2_4 inst:ORCA_TOP/I_CONTEXT_MEM/I_CONTEXT_RAM_3_1 inst:ORCA_TOP/I_CONTEXT_MEM/I_CONTEXT_RAM_3_2 inst:ORCA_TOP/I_CONTEXT_MEM/I_CONTEXT_RAM_3_3 inst:ORCA_TOP/I_CONTEXT_MEM/I_CONTEXT_RAM_3_4 {inst:ORCA_TOP/I_PCI_TOP/I_PCI_READ_FIFO\/PCI_FIFO_RAM_1} {inst:ORCA_TOP/I_PCI_TOP/I_PCI_READ_FIFO\/PCI_FIFO_RAM_2} {inst:ORCA_TOP/I_PCI_TOP/I_PCI_READ_FIFO\/PCI_FIFO_RAM_3} {inst:ORCA_TOP/I_PCI_TOP/I_PCI_READ_FIFO\/PCI_FIFO_RAM_4} {inst:ORCA_TOP/I_PCI_TOP/I_PCI_READ_FIFO\/PCI_FIFO_RAM_5} {inst:ORCA_TOP/I_PCI_TOP/I_PCI_READ_FIFO\/PCI_FIFO_RAM_6} {inst:ORCA_TOP/I_PCI_TOP/I_PCI_READ_FIFO\/PCI_FIFO_RAM_7} {inst:ORCA_TOP/I_PCI_TOP/I_PCI_READ_FIFO\/PCI_FIFO_RAM_8} {inst:ORCA_TOP/I_PCI_TOP/I_PCI_WRITE_FIFO\/PCI_FIFO_RAM_1} {inst:ORCA_TOP/I_PCI_TOP/I_PCI_WRITE_FIFO\/PCI_FIFO_RAM_2} {inst:ORCA_TOP/I_PCI_TOP/I_PCI_WRITE_FIFO\/PCI_FIFO_RAM_3} {inst:ORCA_TOP/I_PCI_TOP/I_PCI_WRITE_FIFO\/PCI_FIFO_RAM_4} {inst:ORCA_TOP/I_PCI_TOP/I_PCI_WRITE_FIFO\/PCI_FIFO_RAM_5} {inst:ORCA_TOP/I_PCI_TOP/I_PCI_WRITE_FIFO\/PCI_FIFO_RAM_6} {inst:ORCA_TOP/I_PCI_TOP/I_PCI_WRITE_FIFO\/PCI_FIFO_RAM_7} {inst:ORCA_TOP/I_PCI_TOP/I_PCI_WRITE_FIFO\/PCI_FIFO_RAM_8} {inst:ORCA_TOP/I_RISC_CORE/I_REG_FILE\/REG_FILE_A_RAM} {inst:ORCA_TOP/I_RISC_CORE/I_REG_FILE\/REG_FILE_B_RAM} {inst:ORCA_TOP/I_RISC_CORE/I_REG_FILE\/REG_FILE_C_RAM} {inst:ORCA_TOP/I_RISC_CORE/I_REG_FILE\/REG_FILE_D_RAM} inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!3 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!4 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!7 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!8 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!11 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!12 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!13 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!14 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!17 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!18 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!19 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!20 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!23 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!24 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!25 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!26 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!29 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!30 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!31 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!32 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!35 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!36 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!37 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!38 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!41 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!42 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!43 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!44 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!47 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!48 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!49 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!50 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!53 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!54 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!55 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!56 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!59 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!60 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!61 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!62 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!65 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!66 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!67 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!68 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!71 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!72 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!73 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!74 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!77 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!78 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!79 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!80 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!83 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!84 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!85 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!86 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!89 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!90 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!91 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!92 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!95 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!96 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!97 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!98 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!101 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!102 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!103 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!104 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!107 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!108 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!109 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!110 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!113 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!114 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!115 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!116 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!119 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!120 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!121 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!122 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!125 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!126 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!127 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!128 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!131 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!132 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!133 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!134 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!137 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!138 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!139 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!140 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!143 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!144 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!145 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!146 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!149 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!150 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!151 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!152 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!155 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!156 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!157 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!158 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!161 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!162 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!163 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!164 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!167 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!168 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!169 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!170 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!173 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!174 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!175 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!176 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!179 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!180 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!181 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!182 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!185 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!186 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!187 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!188 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!191 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!192 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!193 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!194 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!197 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!198 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!199 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!200 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!203 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!204 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!205 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!206 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!209 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!210 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!211 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!212 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!215 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!216 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!217 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!218 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!221 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!222 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!223 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!224 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!227 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!228 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!229 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!230 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!233 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!234 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!235 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!236 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!239 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!240 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!241 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!242 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!245 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!246 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!247 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!248 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!251 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!252 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!253 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!254 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!257 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!258 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!259 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!260 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!263 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!264 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!265 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!266 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!269 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!270 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!271 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!272 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!275 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!276 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!277 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!278 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!281 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!282 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!283 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!284 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!287 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!288 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!289 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!290 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!293 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!294 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!295 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!296 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!299 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!300 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!301 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!302 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!305 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!306 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!307 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!308 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!311 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!312 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!313 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!314 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!317 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!318 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!319 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!320 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!323 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!324 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!325 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!326 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!329 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!330 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!331 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!332 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!335 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!336 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!337 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!338 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!341 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!342 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!343 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!344 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!347 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!348 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!349 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!350 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!353 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!354 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!355 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!356 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!359 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!360 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!361 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!362 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!365 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!366 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!367 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!368 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!371 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!372 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!373 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!374 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!377 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!378 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!379 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!380 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!383 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!384 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!385 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!386 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!389 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!390 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!391 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!392 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!395 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!396 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!397 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!398 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!401 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!402 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!403 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!404 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!407 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!408 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!409 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!410 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!413 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!414 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!415 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!416 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!419 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!420 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!421 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!422 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!425 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!426 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!427 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!428 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!431 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!432 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!433 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!434 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!437 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!438 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!439 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!440 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!443 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!444 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!445 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!446 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!449 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!450 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!451 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!452 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!455 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!456 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!457 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!458 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!461 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!462 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!463 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!464 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!467 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!468 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!469 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!470 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!473 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!474 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!475 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!476 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!479 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!480 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!481 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!482 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!485 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!486 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!487 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!488 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!491 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!492 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!493 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!494 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!497 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!498 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!499 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!500 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!503 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!504 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!505 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!506 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!509 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!510 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!511 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!512 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!515 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!516 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!517 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!518 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!521 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!522 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!523 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!524 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!527 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!528 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!529 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!530 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!533 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!534 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!535 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!536 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!539 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!540 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!541 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!542 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!545 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!546 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!547 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!548 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!551 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!552 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!553 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!554 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!557 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!558 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!559 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!560 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!563 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!564 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!565 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!566 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!569 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!570 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!571 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!572 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!575 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!576 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!579 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!580 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!583 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!584 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!587 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!588 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!591 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!592 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!595 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!596 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!599 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!600 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!603 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!604 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!607 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!608 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!611 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!612 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!615 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!616 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!619 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!620 {inst:ORCA_TOP/I_SDRAM_TOP/I_SDRAM_READ_FIFO\/SD_FIFO_RAM_0} {inst:ORCA_TOP/I_SDRAM_TOP/I_SDRAM_READ_FIFO\/SD_FIFO_RAM_1} {inst:ORCA_TOP/I_SDRAM_TOP/I_SDRAM_WRITE_FIFO\/SD_FIFO_RAM_0} {inst:ORCA_TOP/I_SDRAM_TOP/I_SDRAM_WRITE_FIFO\/SD_FIFO_RAM_1}}
select_obj {}
defOut -selected ../outputs/ORCA_TOP.floorplan.innovus.macros.def
setLayerPreference flightLine -isVisible 0
setLayerPreference flightLine -isVisible 1
setLayerPreference flightLine -isVisible 0
setLayerPreference flightLine -isVisible 1
setLayerPreference flightLine -isVisible 0
deselectAll
selectInst I_RISC_CORE/I_REG_FILE/REG_FILE_C_RAM
setLayerPreference flightLine -isVisible 1
deselectAll
selectInst I_RISC_CORE/I_REG_FILE/REG_FILE_C_RAM
deselectAll
selectInst I_SDRAM_TOP/I_SDRAM_WRITE_FIFO/SD_FIFO_RAM_0
setLayerPreference flightLine -isVisible 0
deselectAll
selectInst I_CONTEXT_MEM/I_CONTEXT_RAM_2_3
setLayerPreference flightLine -isVisible 1
deselectAll
selectInst I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_8
deselectAll
selectInst I_CONTEXT_MEM/I_CONTEXT_RAM_3_3
deselectAll
selectInst I_CONTEXT_MEM/I_CONTEXT_RAM_3_2
deselectAll
selectInst I_CONTEXT_MEM/I_CONTEXT_RAM_1_3
deselectAll
selectInst I_CONTEXT_MEM/I_CONTEXT_RAM_2_2
deselectAll
selectInst I_CONTEXT_MEM/I_CONTEXT_RAM_2_3
deselectAll
selectInst I_CONTEXT_MEM/I_CONTEXT_RAM_1_2
deselectAll
selectInst I_SDRAM_TOP/I_SDRAM_WRITE_FIFO/SD_FIFO_RAM_1
deselectAll
selectInst I_SDRAM_TOP/I_SDRAM_READ_FIFO/SD_FIFO_RAM_1
deselectAll
selectInst I_SDRAM_TOP/I_SDRAM_READ_FIFO/SD_FIFO_RAM_0
deselectAll
selectInst I_SDRAM_TOP/I_SDRAM_WRITE_FIFO/SD_FIFO_RAM_0
deselectAll
selectInst I_CONTEXT_MEM/I_CONTEXT_RAM_0_3
deselectAll
selectInst I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_4
deselectAll
selectInst I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_3
deselectAll
selectInst I_CONTEXT_MEM/I_CONTEXT_RAM_0_3
deselectAll
selectInst I_CONTEXT_MEM/I_CONTEXT_RAM_0_2
deselectAll
selectInst I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_4
deselectAll
selectInst I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_3
deselectAll
selectInst I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_5
deselectAll
selectInst I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_6
fit
deselectAll
selectInst I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_6
deselectAll
selectInst I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_2
setPreference ClockFlightline 0
setPreference DrawFlightlineLast 1
setPreference ScanFlightline 0
setPreference SkipBufferFlightline 1
setPreference ShowNetWeightConnection 0
deselectAll
selectInst I_SDRAM_TOP/I_SDRAM_WRITE_FIFO/SD_FIFO_RAM_1
deselectAll
selectInst I_SDRAM_TOP/I_SDRAM_READ_FIFO/SD_FIFO_RAM_1
deselectAll
selectInst I_SDRAM_TOP/I_SDRAM_READ_FIFO/SD_FIFO_RAM_0
deselectAll
selectInst I_SDRAM_TOP/I_SDRAM_WRITE_FIFO/SD_FIFO_RAM_1
highlight 0x7fbf709d19c0 -index 1
deselectAll
selectInst {I_CONTEXT_MEM/I_CONTEXT_RAM_0_1 I_CONTEXT_MEM/I_CONTEXT_RAM_0_2 I_CONTEXT_MEM/I_CONTEXT_RAM_0_3 I_CONTEXT_MEM/I_CONTEXT_RAM_0_4 I_CONTEXT_MEM/I_CONTEXT_RAM_1_1 I_CONTEXT_MEM/I_CONTEXT_RAM_1_2 I_CONTEXT_MEM/I_CONTEXT_RAM_1_3 I_CONTEXT_MEM/I_CONTEXT_RAM_1_4 I_CONTEXT_MEM/I_CONTEXT_RAM_2_1 I_CONTEXT_MEM/I_CONTEXT_RAM_2_2 I_CONTEXT_MEM/I_CONTEXT_RAM_2_3 I_CONTEXT_MEM/I_CONTEXT_RAM_2_4 I_CONTEXT_MEM/I_CONTEXT_RAM_3_1 I_CONTEXT_MEM/I_CONTEXT_RAM_3_2 I_CONTEXT_MEM/I_CONTEXT_RAM_3_3 I_CONTEXT_MEM/I_CONTEXT_RAM_3_4}
highlight -index 1
deselectAll
selectInst {I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_1 I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_2 I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_3 I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_4 I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_5 I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_6 I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_7 I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_8 I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_1 I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_2 I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_3 I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_4 I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_5 I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_6 I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_7 I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_8}
highlight -index 2
deselectAll
selectInst {I_RISC_CORE/I_REG_FILE/REG_FILE_A_RAM I_RISC_CORE/I_REG_FILE/REG_FILE_B_RAM I_RISC_CORE/I_REG_FILE/REG_FILE_C_RAM I_RISC_CORE/I_REG_FILE/REG_FILE_D_RAM}
highlight -index 3
deselectAll
selectInst {I_SDRAM_TOP/I_SDRAM_READ_FIFO/SD_FIFO_RAM_0 I_SDRAM_TOP/I_SDRAM_READ_FIFO/SD_FIFO_RAM_1 I_SDRAM_TOP/I_SDRAM_WRITE_FIFO/SD_FIFO_RAM_0 I_SDRAM_TOP/I_SDRAM_WRITE_FIFO/SD_FIFO_RAM_1}
highlight -index 4
deselectAll
selectInst {I_CONTEXT_MEM/I_CONTEXT_RAM_0_1 I_CONTEXT_MEM/I_CONTEXT_RAM_0_2 I_CONTEXT_MEM/I_CONTEXT_RAM_0_3 I_CONTEXT_MEM/I_CONTEXT_RAM_0_4 I_CONTEXT_MEM/I_CONTEXT_RAM_1_1 I_CONTEXT_MEM/I_CONTEXT_RAM_1_2 I_CONTEXT_MEM/I_CONTEXT_RAM_1_3 I_CONTEXT_MEM/I_CONTEXT_RAM_1_4 I_CONTEXT_MEM/I_CONTEXT_RAM_2_1 I_CONTEXT_MEM/I_CONTEXT_RAM_2_2 I_CONTEXT_MEM/I_CONTEXT_RAM_2_3 I_CONTEXT_MEM/I_CONTEXT_RAM_2_4 I_CONTEXT_MEM/I_CONTEXT_RAM_3_1 I_CONTEXT_MEM/I_CONTEXT_RAM_3_2 I_CONTEXT_MEM/I_CONTEXT_RAM_3_3 I_CONTEXT_MEM/I_CONTEXT_RAM_3_4}
highlight -index 1
deselectAll
selectInst {I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_1 I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_2 I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_3 I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_4 I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_5 I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_6 I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_7 I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_8 I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_1 I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_2 I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_3 I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_4 I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_5 I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_6 I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_7 I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_8}
highlight -index 2
deselectAll
selectInst {I_RISC_CORE/I_REG_FILE/REG_FILE_A_RAM I_RISC_CORE/I_REG_FILE/REG_FILE_B_RAM I_RISC_CORE/I_REG_FILE/REG_FILE_C_RAM I_RISC_CORE/I_REG_FILE/REG_FILE_D_RAM}
highlight -index 3
deselectAll
selectInst {I_SDRAM_TOP/I_SDRAM_READ_FIFO/SD_FIFO_RAM_0 I_SDRAM_TOP/I_SDRAM_READ_FIFO/SD_FIFO_RAM_1 I_SDRAM_TOP/I_SDRAM_WRITE_FIFO/SD_FIFO_RAM_0 I_SDRAM_TOP/I_SDRAM_WRITE_FIFO/SD_FIFO_RAM_1}
highlight -index 4
deselectAll
selectInst {I_CONTEXT_MEM/I_CONTEXT_RAM_0_1 I_CONTEXT_MEM/I_CONTEXT_RAM_0_2 I_CONTEXT_MEM/I_CONTEXT_RAM_0_3 I_CONTEXT_MEM/I_CONTEXT_RAM_0_4 I_CONTEXT_MEM/I_CONTEXT_RAM_1_1 I_CONTEXT_MEM/I_CONTEXT_RAM_1_2 I_CONTEXT_MEM/I_CONTEXT_RAM_1_3 I_CONTEXT_MEM/I_CONTEXT_RAM_1_4 I_CONTEXT_MEM/I_CONTEXT_RAM_2_1 I_CONTEXT_MEM/I_CONTEXT_RAM_2_2 I_CONTEXT_MEM/I_CONTEXT_RAM_2_3 I_CONTEXT_MEM/I_CONTEXT_RAM_2_4 I_CONTEXT_MEM/I_CONTEXT_RAM_3_1 I_CONTEXT_MEM/I_CONTEXT_RAM_3_2 I_CONTEXT_MEM/I_CONTEXT_RAM_3_3 I_CONTEXT_MEM/I_CONTEXT_RAM_3_4}
highlight -index 1
deselectAll
selectInst {I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_1 I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_2 I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_3 I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_4 I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_5 I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_6 I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_7 I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_8 I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_1 I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_2 I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_3 I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_4 I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_5 I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_6 I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_7 I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_8}
highlight -index 2
deselectAll
selectInst {I_RISC_CORE/I_REG_FILE/REG_FILE_A_RAM I_RISC_CORE/I_REG_FILE/REG_FILE_B_RAM I_RISC_CORE/I_REG_FILE/REG_FILE_C_RAM I_RISC_CORE/I_REG_FILE/REG_FILE_D_RAM}
highlight -index 3
deselectAll
selectInst {I_SDRAM_TOP/I_SDRAM_READ_FIFO/SD_FIFO_RAM_0 I_SDRAM_TOP/I_SDRAM_READ_FIFO/SD_FIFO_RAM_1 I_SDRAM_TOP/I_SDRAM_WRITE_FIFO/SD_FIFO_RAM_0 I_SDRAM_TOP/I_SDRAM_WRITE_FIFO/SD_FIFO_RAM_1}
highlight -index 4
deselectAll
selectInst I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_5
deselectAll
selectInst I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_6
deselectAll
selectInst I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_2
uiSetTool moveWire
deselectAll
selectInst I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_2
deselectAll
selectInst I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_2
editMerge
deselectAll
selectInst I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_2
uiSetTool moveWire
deselectAll
selectInst {I_CONTEXT_MEM/I_CONTEXT_RAM_0_1 I_CONTEXT_MEM/I_CONTEXT_RAM_0_2 I_CONTEXT_MEM/I_CONTEXT_RAM_0_3 I_CONTEXT_MEM/I_CONTEXT_RAM_0_4 I_CONTEXT_MEM/I_CONTEXT_RAM_1_1 I_CONTEXT_MEM/I_CONTEXT_RAM_1_2 I_CONTEXT_MEM/I_CONTEXT_RAM_1_3 I_CONTEXT_MEM/I_CONTEXT_RAM_1_4 I_CONTEXT_MEM/I_CONTEXT_RAM_2_1 I_CONTEXT_MEM/I_CONTEXT_RAM_2_2 I_CONTEXT_MEM/I_CONTEXT_RAM_2_3 I_CONTEXT_MEM/I_CONTEXT_RAM_2_4 I_CONTEXT_MEM/I_CONTEXT_RAM_3_1 I_CONTEXT_MEM/I_CONTEXT_RAM_3_2 I_CONTEXT_MEM/I_CONTEXT_RAM_3_3 I_CONTEXT_MEM/I_CONTEXT_RAM_3_4}
highlight -index 1
deselectAll
selectInst {I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_1 I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_2 I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_3 I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_4 I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_5 I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_6 I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_7 I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_8 I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_1 I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_2 I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_3 I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_4 I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_5 I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_6 I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_7 I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_8}
highlight -index 2
deselectAll
selectInst {I_RISC_CORE/I_REG_FILE/REG_FILE_A_RAM I_RISC_CORE/I_REG_FILE/REG_FILE_B_RAM I_RISC_CORE/I_REG_FILE/REG_FILE_C_RAM I_RISC_CORE/I_REG_FILE/REG_FILE_D_RAM}
highlight -index 3
deselectAll
selectInst {I_SDRAM_TOP/I_SDRAM_READ_FIFO/SD_FIFO_RAM_0 I_SDRAM_TOP/I_SDRAM_READ_FIFO/SD_FIFO_RAM_1 I_SDRAM_TOP/I_SDRAM_WRITE_FIFO/SD_FIFO_RAM_0 I_SDRAM_TOP/I_SDRAM_WRITE_FIFO/SD_FIFO_RAM_1}
highlight -index 4
deselectAll
selectInst I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_8
selectInst I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_7
setLayerPreference flightLine -isVisible 0
selectInst I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_5
selectInst I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_8
selectInst I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_6
selectInst I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_2
selectInst I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_2
selectInst I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_1
selectInst I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_3
selectInst I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_4
selectInst I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_1
selectInst I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_7
selectInst I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_3
selectInst I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_4
selectInst I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_6
selectInst I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_5
setLayerPreference flightLine -isVisible 1
setLayerPreference flightLine -isVisible 0
deselectAll
selectInst I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_1
setLayerPreference flightLine -isVisible 1
deselectAll
selectInst I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_6
deselectAll
selectInst I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_7
deselectAll
selectInst I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_3
deselectAll
selectInst I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_4
deselectAll
selectInst I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_6
deselectAll
selectInst I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_5
deselectAll
setLayerPreference flightLine -isVisible 0
selectInst I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_7
selectInst I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_8
selectInst I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_5
selectInst I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_8
selectInst I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_1
selectInst I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_2
selectInst I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_4
selectInst I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_4
selectInst I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_3
selectInst I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_1
selectInst I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_7
selectInst I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_6
selectInst I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_2
selectInst I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_3
selectInst I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_4
selectInst I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_6
selectInst I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_5
uiSetTool move
setObjFPlanBox Instance I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_5 788.074 104.795 842.679 159.73
setObjFPlanBox Instance I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_6 730.77 104.795 785.375 159.73
setObjFPlanBox Instance I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_4 594.122 104.795 648.727 159.73
setObjFPlanBox Instance I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_3 536.818 104.795 591.423 159.73
setObjFPlanBox Instance I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_2 412.026 389.035 466.631 443.97
setObjFPlanBox Instance I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_6 469.33 389.035 523.935 443.97
setObjFPlanBox Instance I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_7 536.818 282.027 591.423 336.962
setObjFPlanBox Instance I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_1 594.122 282.027 648.727 336.962
setObjFPlanBox Instance I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_3 786.858 282.027 841.463 336.962
setObjFPlanBox Instance I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_4 844.162 282.027 898.767 336.962
setObjFPlanBox Instance I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_2 844.162 389.035 898.767 443.97
setObjFPlanBox Instance I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_1 786.858 389.035 841.463 443.97
setObjFPlanBox Instance I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_8 802.818 541.187 857.423 596.122
setObjFPlanBox Instance I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_5 536.666 543.011 591.601 597.616
setObjFPlanBox Instance I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_8 536.666 708.539 591.601 763.144
setObjFPlanBox Instance I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_7 411.874 708.539 466.809 763.144
uiSetTool move
uiSetTool move
uiSetTool move
uiSetTool select
deselectAll
selectInst I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_7
deselectAll
selectInst I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_8
deselectAll
selectInst I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_7
selectInst I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_8
uiSetTool move
setObjFPlanBox Instance I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_8 644.623 750.522 699.558 805.127
setObjFPlanBox Instance I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_7 519.831 750.522 574.766 805.127
uiSetTool select
deselectAll
selectInst I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_7
uiSetTool move
setObjFPlanBox Instance I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_7 582.206 750.522 637.141 805.127
uiSetTool select
deselectAll
selectInst I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_5
deselectAll
selectInst I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_6
selectInst I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_2
uiSetTool move
setObjFPlanBox Instance I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_2 583.558 688.916 638.163 743.851
setObjFPlanBox Instance I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_6 640.862 688.916 695.467 743.851
uiSetTool select
deselectAll
selectInst I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_7
selectInst I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_1
uiSetTool move
setObjFPlanBox Instance I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_1 640.904 623.892 695.509 678.827
setObjFPlanBox Instance I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_7 583.6 623.892 638.205 678.827
uiSetTool select
deselectAll
selectInst I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_7
uiSetTool move
setObjFPlanBox Instance I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_7 587.004 750.522 641.939 805.127
uiSetTool select
selectInst I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_8
uiSetTool move
setObjFPlanBox Instance I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_8 639.825 750.522 694.76 805.127
setObjFPlanBox Instance I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_7 582.206 750.522 637.141 805.127
uiSetTool select
deselectAll
selectInst I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_1
selectInst I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_2
uiSetTool move
setObjFPlanBox Instance I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_2 640.243 560.567 694.848 615.502
setObjFPlanBox Instance I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_1 582.939 560.567 637.544 615.502
uiSetTool select
deselectAll
selectInst I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_5
uiSetTool move
setObjFPlanBox Instance I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_5 582.248 501.027 637.183 555.632
uiSetTool select
deselectAll
selectInst I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_8
uiSetTool move
setObjFPlanBox Instance I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_8 638.482 500.404 693.087 555.339
uiSetTool select
deselectAll
selectInst I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_3
selectInst I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_4
uiSetTool move
setObjFPlanBox Instance I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_4 639.042 433.167 693.647 488.102
setObjFPlanBox Instance I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_3 581.738 433.167 636.343 488.102
uiSetTool select
deselectAll
selectInst I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_3
selectInst I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_4
uiSetTool move
setObjFPlanBox Instance I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_4 520.951 751.34 575.556 806.275
setObjFPlanBox Instance I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_3 463.647 751.34 518.252 806.275
uiSetTool select
deselectAll
selectInst I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_6
selectInst I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_5
uiSetTool move
uiSetTool move
setObjFPlanBox Instance I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_5 521.779 688.964 576.384 743.899
setObjFPlanBox Instance I_PCI_TOP/I_PCI_READ_FIFO/PCI_FIFO_RAM_6 464.475 688.964 519.08 743.899
uiSetTool select
deselectAll
selectInst I_CONTEXT_MEM/I_CONTEXT_RAM_0_3
selectInst I_CONTEXT_MEM/I_CONTEXT_RAM_0_2
uiSetTool move
setObjFPlanBox Instance I_CONTEXT_MEM/I_CONTEXT_RAM_0_2 11.77 498.239 77.512 580.29
setObjFPlanBox Instance I_CONTEXT_MEM/I_CONTEXT_RAM_0_3 11.77 585.183 77.512 667.234
uiSetTool select
deselectAll
selectInst I_CONTEXT_MEM/I_CONTEXT_RAM_0_4
selectInst I_CONTEXT_MEM/I_CONTEXT_RAM_2_4
uiSetTool move
setObjFPlanBox Instance I_CONTEXT_MEM/I_CONTEXT_RAM_2_4 9.906 429.444 91.957 495.186
setObjFPlanBox Instance I_CONTEXT_MEM/I_CONTEXT_RAM_0_4 9.906 359.22 91.957 424.962
uiSetTool select
deselectAll
selectInst I_CONTEXT_MEM/I_CONTEXT_RAM_0_1
selectInst I_CONTEXT_MEM/I_CONTEXT_RAM_3_1
uiSetTool move
setObjFPlanBox Instance I_CONTEXT_MEM/I_CONTEXT_RAM_3_1 120.955 271.027 186.697 353.078
setObjFPlanBox Instance I_CONTEXT_MEM/I_CONTEXT_RAM_0_1 11.971 271.027 77.713 353.078
uiSetTool select
deselectAll
selectInst I_CONTEXT_MEM/I_CONTEXT_RAM_3_1
uiSetTool move
setObjFPlanBox Instance I_CONTEXT_MEM/I_CONTEXT_RAM_3_1 11.798 184.661 77.54 266.712
uiSetTool select
deselectAll
selectInst I_CONTEXT_MEM/I_CONTEXT_RAM_2_2
selectInst I_CONTEXT_MEM/I_CONTEXT_RAM_1_2
deselectAll
selectInst I_CONTEXT_MEM/I_CONTEXT_RAM_1_3
selectInst I_CONTEXT_MEM/I_CONTEXT_RAM_2_2
uiSetTool move
setObjFPlanBox Instance I_CONTEXT_MEM/I_CONTEXT_RAM_2_2 101.436 726.311 167.178 808.362
setObjFPlanBox Instance I_CONTEXT_MEM/I_CONTEXT_RAM_1_3 101.436 637.695 167.178 719.746
uiSetTool select
deselectAll
selectInst I_CONTEXT_MEM/I_CONTEXT_RAM_1_2
selectInst I_CONTEXT_MEM/I_CONTEXT_RAM_3_3
uiSetTool move
setObjFPlanBox Instance I_CONTEXT_MEM/I_CONTEXT_RAM_3_3 172.996 637.694 238.738 719.745
setObjFPlanBox Instance I_CONTEXT_MEM/I_CONTEXT_RAM_1_2 172.996 726.31 238.738 808.361
uiSetTool select
deselectAll
selectInst I_CONTEXT_MEM/I_CONTEXT_RAM_2_3
selectInst I_CONTEXT_MEM/I_CONTEXT_RAM_3_2
uiSetTool move
setObjFPlanBox Instance I_CONTEXT_MEM/I_CONTEXT_RAM_3_2 244.554 636.495 310.296 718.546
setObjFPlanBox Instance I_CONTEXT_MEM/I_CONTEXT_RAM_2_3 244.554 725.111 310.296 807.162
uiSetTool select
deselectAll
selectInst I_CONTEXT_MEM/I_CONTEXT_RAM_1_1
uiSetTool move
setObjFPlanBox Instance I_CONTEXT_MEM/I_CONTEXT_RAM_1_1 312.748 724.598 378.49 806.649
uiSetTool select
deselectAll
selectInst I_CONTEXT_MEM/I_CONTEXT_RAM_2_1
uiSetTool move
setObjFPlanBox Instance I_CONTEXT_MEM/I_CONTEXT_RAM_2_1 314.735 636.777 380.477 718.828
uiSetTool select
deselectAll
selectObject Group PD_RISC_CORE
deselectAll
selectObject Group PD_RISC_CORE
uiSetTool move
uiSetTool move
setObjFPlanBox Group PD_RISC_CORE 589.628 0.0 1009.628 400.0
uiSetTool select
deselectAll
selectInst I_RISC_CORE/I_REG_FILE/REG_FILE_D_RAM
uiSetTool move
setObjFPlanBox Instance I_RISC_CORE/I_REG_FILE/REG_FILE_D_RAM 723.927 10.173 859.6 97.803
uiSetTool select
deselectAll
selectInst I_RISC_CORE/I_REG_FILE/REG_FILE_C_RAM
uiSetTool move
setObjFPlanBox Instance I_RISC_CORE/I_REG_FILE/REG_FILE_C_RAM 723.927 102.94 859.6 190.57
uiSetTool select
deselectAll
selectInst I_SDRAM_TOP/I_SDRAM_READ_FIFO/SD_FIFO_RAM_0
uiSetTool move
setObjFPlanBox Instance I_SDRAM_TOP/I_SDRAM_READ_FIFO/SD_FIFO_RAM_0 745.261 448.848 876.667 543.756
uiSetTool select
deselectAll
selectInst I_SDRAM_TOP/I_SDRAM_READ_FIFO/SD_FIFO_RAM_1
selectInst I_SDRAM_TOP/I_SDRAM_WRITE_FIFO/SD_FIFO_RAM_0
uiSetTool move
setObjFPlanBox Instance I_SDRAM_TOP/I_SDRAM_WRITE_FIFO/SD_FIFO_RAM_0 913.84 539.921 1008.748 671.327
setObjFPlanBox Instance I_SDRAM_TOP/I_SDRAM_READ_FIFO/SD_FIFO_RAM_1 913.84 677.025 1008.748 808.431
uiSetTool select
deselectAll
selectInst I_SDRAM_TOP/I_SDRAM_WRITE_FIFO/SD_FIFO_RAM_1
uiSetTool move
uiSetTool move
setObjFPlanBox Instance I_SDRAM_TOP/I_SDRAM_WRITE_FIFO/SD_FIFO_RAM_1 815.176 677.026 910.084 808.432
uiSetTool select
deselectAll
selectInst I_SDRAM_TOP/I_SDRAM_READ_FIFO/SD_FIFO_RAM_0
uiSetTool move
setObjFPlanBox Instance I_SDRAM_TOP/I_SDRAM_READ_FIFO/SD_FIFO_RAM_0 778.848 577.198 910.254 672.106
uiSetTool select
deselectAll
select_obj [ get_ports * ]
select_obj {port:ORCA_TOP/sdram_clk port:ORCA_TOP/sys_2x_clk port:ORCA_TOP/shutdown port:ORCA_TOP/test_mode {port:ORCA_TOP/test_si[5]} {port:ORCA_TOP/test_si[4]} {port:ORCA_TOP/test_si[3]} {port:ORCA_TOP/test_si[2]} {port:ORCA_TOP/test_si[1]} {port:ORCA_TOP/test_si[0]} {port:ORCA_TOP/test_so[5]} {port:ORCA_TOP/test_so[4]} {port:ORCA_TOP/test_so[3]} {port:ORCA_TOP/test_so[2]} {port:ORCA_TOP/test_so[1]} {port:ORCA_TOP/test_so[0]} port:ORCA_TOP/scan_enable port:ORCA_TOP/ate_clk port:ORCA_TOP/occ_bypass port:ORCA_TOP/occ_reset port:ORCA_TOP/pclk port:ORCA_TOP/prst_n port:ORCA_TOP/pidsel port:ORCA_TOP/pgnt_n {port:ORCA_TOP/pad_in[31]} {port:ORCA_TOP/pad_in[30]} {port:ORCA_TOP/pad_in[29]} {port:ORCA_TOP/pad_in[28]} {port:ORCA_TOP/pad_in[27]} {port:ORCA_TOP/pad_in[26]} {port:ORCA_TOP/pad_in[25]} {port:ORCA_TOP/pad_in[24]} {port:ORCA_TOP/pad_in[23]} {port:ORCA_TOP/pad_in[22]} {port:ORCA_TOP/pad_in[21]} {port:ORCA_TOP/pad_in[20]} {port:ORCA_TOP/pad_in[19]} {port:ORCA_TOP/pad_in[18]} {port:ORCA_TOP/pad_in[17]} {port:ORCA_TOP/pad_in[16]} {port:ORCA_TOP/pad_in[15]} {port:ORCA_TOP/pad_in[14]} {port:ORCA_TOP/pad_in[13]} {port:ORCA_TOP/pad_in[12]} {port:ORCA_TOP/pad_in[11]} {port:ORCA_TOP/pad_in[10]} {port:ORCA_TOP/pad_in[9]} {port:ORCA_TOP/pad_in[8]} {port:ORCA_TOP/pad_in[7]} {port:ORCA_TOP/pad_in[6]} {port:ORCA_TOP/pad_in[5]} {port:ORCA_TOP/pad_in[4]} {port:ORCA_TOP/pad_in[3]} {port:ORCA_TOP/pad_in[2]} {port:ORCA_TOP/pad_in[1]} {port:ORCA_TOP/pad_in[0]} {port:ORCA_TOP/pad_out[31]} {port:ORCA_TOP/pad_out[30]} {port:ORCA_TOP/pad_out[29]} {port:ORCA_TOP/pad_out[28]} {port:ORCA_TOP/pad_out[27]} {port:ORCA_TOP/pad_out[26]} {port:ORCA_TOP/pad_out[25]} {port:ORCA_TOP/pad_out[24]} {port:ORCA_TOP/pad_out[23]} {port:ORCA_TOP/pad_out[22]} {port:ORCA_TOP/pad_out[21]} {port:ORCA_TOP/pad_out[20]} {port:ORCA_TOP/pad_out[19]} {port:ORCA_TOP/pad_out[18]} {port:ORCA_TOP/pad_out[17]} {port:ORCA_TOP/pad_out[16]} {port:ORCA_TOP/pad_out[15]} {port:ORCA_TOP/pad_out[14]} {port:ORCA_TOP/pad_out[13]} {port:ORCA_TOP/pad_out[12]} {port:ORCA_TOP/pad_out[11]} {port:ORCA_TOP/pad_out[10]} {port:ORCA_TOP/pad_out[9]} {port:ORCA_TOP/pad_out[8]} {port:ORCA_TOP/pad_out[7]} {port:ORCA_TOP/pad_out[6]} {port:ORCA_TOP/pad_out[5]} {port:ORCA_TOP/pad_out[4]} {port:ORCA_TOP/pad_out[3]} {port:ORCA_TOP/pad_out[2]} {port:ORCA_TOP/pad_out[1]} {port:ORCA_TOP/pad_out[0]} port:ORCA_TOP/pad_en port:ORCA_TOP/ppar_in port:ORCA_TOP/ppar_out port:ORCA_TOP/ppar_en {port:ORCA_TOP/pc_be_in[3]} {port:ORCA_TOP/pc_be_in[2]} {port:ORCA_TOP/pc_be_in[1]} {port:ORCA_TOP/pc_be_in[0]} {port:ORCA_TOP/pc_be_out[3]} {port:ORCA_TOP/pc_be_out[2]} {port:ORCA_TOP/pc_be_out[1]} {port:ORCA_TOP/pc_be_out[0]} port:ORCA_TOP/pc_be_en port:ORCA_TOP/pframe_n_in port:ORCA_TOP/pframe_n_out port:ORCA_TOP/pframe_n_en port:ORCA_TOP/ptrdy_n_in port:ORCA_TOP/ptrdy_n_out port:ORCA_TOP/ptrdy_n_en port:ORCA_TOP/pirdy_n_in port:ORCA_TOP/pirdy_n_out port:ORCA_TOP/pirdy_n_en port:ORCA_TOP/pdevsel_n_in port:ORCA_TOP/pdevsel_n_out port:ORCA_TOP/pdevsel_n_en port:ORCA_TOP/pstop_n_in port:ORCA_TOP/pstop_n_out port:ORCA_TOP/pstop_n_en port:ORCA_TOP/pperr_n_in port:ORCA_TOP/pperr_n_out port:ORCA_TOP/pperr_n_en port:ORCA_TOP/pserr_n_in port:ORCA_TOP/pserr_n_out port:ORCA_TOP/pserr_n_en port:ORCA_TOP/preq_n port:ORCA_TOP/pack_n port:ORCA_TOP/pm66en {port:ORCA_TOP/sd_A[9]} {port:ORCA_TOP/sd_A[8]} {port:ORCA_TOP/sd_A[7]} {port:ORCA_TOP/sd_A[6]} {port:ORCA_TOP/sd_A[5]} {port:ORCA_TOP/sd_A[4]} {port:ORCA_TOP/sd_A[3]} {port:ORCA_TOP/sd_A[2]} {port:ORCA_TOP/sd_A[1]} {port:ORCA_TOP/sd_A[0]} port:ORCA_TOP/sd_CK port:ORCA_TOP/sd_CKn port:ORCA_TOP/sd_LD port:ORCA_TOP/sd_RW {port:ORCA_TOP/sd_BWS[1]} {port:ORCA_TOP/sd_BWS[0]} {port:ORCA_TOP/sd_DQ_in[31]} {port:ORCA_TOP/sd_DQ_in[30]} {port:ORCA_TOP/sd_DQ_in[29]} {port:ORCA_TOP/sd_DQ_in[28]} {port:ORCA_TOP/sd_DQ_in[27]} {port:ORCA_TOP/sd_DQ_in[26]} {port:ORCA_TOP/sd_DQ_in[25]} {port:ORCA_TOP/sd_DQ_in[24]} {port:ORCA_TOP/sd_DQ_in[23]} {port:ORCA_TOP/sd_DQ_in[22]} {port:ORCA_TOP/sd_DQ_in[21]} {port:ORCA_TOP/sd_DQ_in[20]} {port:ORCA_TOP/sd_DQ_in[19]} {port:ORCA_TOP/sd_DQ_in[18]} {port:ORCA_TOP/sd_DQ_in[17]} {port:ORCA_TOP/sd_DQ_in[16]} {port:ORCA_TOP/sd_DQ_in[15]} {port:ORCA_TOP/sd_DQ_in[14]} {port:ORCA_TOP/sd_DQ_in[13]} {port:ORCA_TOP/sd_DQ_in[12]} {port:ORCA_TOP/sd_DQ_in[11]} {port:ORCA_TOP/sd_DQ_in[10]} {port:ORCA_TOP/sd_DQ_in[9]} {port:ORCA_TOP/sd_DQ_in[8]} {port:ORCA_TOP/sd_DQ_in[7]} {port:ORCA_TOP/sd_DQ_in[6]} {port:ORCA_TOP/sd_DQ_in[5]} {port:ORCA_TOP/sd_DQ_in[4]} {port:ORCA_TOP/sd_DQ_in[3]} {port:ORCA_TOP/sd_DQ_in[2]} {port:ORCA_TOP/sd_DQ_in[1]} {port:ORCA_TOP/sd_DQ_in[0]} {port:ORCA_TOP/sd_DQ_out[31]} {port:ORCA_TOP/sd_DQ_out[30]} {port:ORCA_TOP/sd_DQ_out[29]} {port:ORCA_TOP/sd_DQ_out[28]} {port:ORCA_TOP/sd_DQ_out[27]} {port:ORCA_TOP/sd_DQ_out[26]} {port:ORCA_TOP/sd_DQ_out[25]} {port:ORCA_TOP/sd_DQ_out[24]} {port:ORCA_TOP/sd_DQ_out[23]} {port:ORCA_TOP/sd_DQ_out[22]} {port:ORCA_TOP/sd_DQ_out[21]} {port:ORCA_TOP/sd_DQ_out[20]} {port:ORCA_TOP/sd_DQ_out[19]} {port:ORCA_TOP/sd_DQ_out[18]} {port:ORCA_TOP/sd_DQ_out[17]} {port:ORCA_TOP/sd_DQ_out[16]} {port:ORCA_TOP/sd_DQ_out[15]} {port:ORCA_TOP/sd_DQ_out[14]} {port:ORCA_TOP/sd_DQ_out[13]} {port:ORCA_TOP/sd_DQ_out[12]} {port:ORCA_TOP/sd_DQ_out[11]} {port:ORCA_TOP/sd_DQ_out[10]} {port:ORCA_TOP/sd_DQ_out[9]} {port:ORCA_TOP/sd_DQ_out[8]} {port:ORCA_TOP/sd_DQ_out[7]} {port:ORCA_TOP/sd_DQ_out[6]} {port:ORCA_TOP/sd_DQ_out[5]} {port:ORCA_TOP/sd_DQ_out[4]} {port:ORCA_TOP/sd_DQ_out[3]} {port:ORCA_TOP/sd_DQ_out[2]} {port:ORCA_TOP/sd_DQ_out[1]} {port:ORCA_TOP/sd_DQ_out[0]} {port:ORCA_TOP/sd_DQ_en[31]} {port:ORCA_TOP/sd_DQ_en[30]} {port:ORCA_TOP/sd_DQ_en[29]} {port:ORCA_TOP/sd_DQ_en[28]} {port:ORCA_TOP/sd_DQ_en[27]} {port:ORCA_TOP/sd_DQ_en[26]} {port:ORCA_TOP/sd_DQ_en[25]} {port:ORCA_TOP/sd_DQ_en[24]} {port:ORCA_TOP/sd_DQ_en[23]} {port:ORCA_TOP/sd_DQ_en[22]} {port:ORCA_TOP/sd_DQ_en[21]} {port:ORCA_TOP/sd_DQ_en[20]} {port:ORCA_TOP/sd_DQ_en[19]} {port:ORCA_TOP/sd_DQ_en[18]} {port:ORCA_TOP/sd_DQ_en[17]} {port:ORCA_TOP/sd_DQ_en[16]} {port:ORCA_TOP/sd_DQ_en[15]} {port:ORCA_TOP/sd_DQ_en[14]} {port:ORCA_TOP/sd_DQ_en[13]} {port:ORCA_TOP/sd_DQ_en[12]} {port:ORCA_TOP/sd_DQ_en[11]} {port:ORCA_TOP/sd_DQ_en[10]} {port:ORCA_TOP/sd_DQ_en[9]} {port:ORCA_TOP/sd_DQ_en[8]} {port:ORCA_TOP/sd_DQ_en[7]} {port:ORCA_TOP/sd_DQ_en[6]} {port:ORCA_TOP/sd_DQ_en[5]} {port:ORCA_TOP/sd_DQ_en[4]} {port:ORCA_TOP/sd_DQ_en[3]} {port:ORCA_TOP/sd_DQ_en[2]} {port:ORCA_TOP/sd_DQ_en[1]} {port:ORCA_TOP/sd_DQ_en[0]} port:ORCA_TOP/test_mode_1 port:ORCA_TOP/scan_enable_2 port:ORCA_TOP/DFT_sdi_1 port:ORCA_TOP/DFT_sdo_1 port:ORCA_TOP/DFT_sdi_2 port:ORCA_TOP/DFT_sdo_2 port:ORCA_TOP/DFT_sdi_3 port:ORCA_TOP/DFT_sdo_3 port:ORCA_TOP/DFT_sdi_4 port:ORCA_TOP/DFT_sdo_4}
select_obj {inst:ORCA_TOP/I_CONTEXT_MEM/I_CONTEXT_RAM_0_1 inst:ORCA_TOP/I_CONTEXT_MEM/I_CONTEXT_RAM_0_2 inst:ORCA_TOP/I_CONTEXT_MEM/I_CONTEXT_RAM_0_3 inst:ORCA_TOP/I_CONTEXT_MEM/I_CONTEXT_RAM_0_4 inst:ORCA_TOP/I_CONTEXT_MEM/I_CONTEXT_RAM_1_1 inst:ORCA_TOP/I_CONTEXT_MEM/I_CONTEXT_RAM_1_2 inst:ORCA_TOP/I_CONTEXT_MEM/I_CONTEXT_RAM_1_3 inst:ORCA_TOP/I_CONTEXT_MEM/I_CONTEXT_RAM_1_4 inst:ORCA_TOP/I_CONTEXT_MEM/I_CONTEXT_RAM_2_1 inst:ORCA_TOP/I_CONTEXT_MEM/I_CONTEXT_RAM_2_2 inst:ORCA_TOP/I_CONTEXT_MEM/I_CONTEXT_RAM_2_3 inst:ORCA_TOP/I_CONTEXT_MEM/I_CONTEXT_RAM_2_4 inst:ORCA_TOP/I_CONTEXT_MEM/I_CONTEXT_RAM_3_1 inst:ORCA_TOP/I_CONTEXT_MEM/I_CONTEXT_RAM_3_2 inst:ORCA_TOP/I_CONTEXT_MEM/I_CONTEXT_RAM_3_3 inst:ORCA_TOP/I_CONTEXT_MEM/I_CONTEXT_RAM_3_4 {inst:ORCA_TOP/I_PCI_TOP/I_PCI_READ_FIFO\/PCI_FIFO_RAM_1} {inst:ORCA_TOP/I_PCI_TOP/I_PCI_READ_FIFO\/PCI_FIFO_RAM_2} {inst:ORCA_TOP/I_PCI_TOP/I_PCI_READ_FIFO\/PCI_FIFO_RAM_3} {inst:ORCA_TOP/I_PCI_TOP/I_PCI_READ_FIFO\/PCI_FIFO_RAM_4} {inst:ORCA_TOP/I_PCI_TOP/I_PCI_READ_FIFO\/PCI_FIFO_RAM_5} {inst:ORCA_TOP/I_PCI_TOP/I_PCI_READ_FIFO\/PCI_FIFO_RAM_6} {inst:ORCA_TOP/I_PCI_TOP/I_PCI_READ_FIFO\/PCI_FIFO_RAM_7} {inst:ORCA_TOP/I_PCI_TOP/I_PCI_READ_FIFO\/PCI_FIFO_RAM_8} {inst:ORCA_TOP/I_PCI_TOP/I_PCI_WRITE_FIFO\/PCI_FIFO_RAM_1} {inst:ORCA_TOP/I_PCI_TOP/I_PCI_WRITE_FIFO\/PCI_FIFO_RAM_2} {inst:ORCA_TOP/I_PCI_TOP/I_PCI_WRITE_FIFO\/PCI_FIFO_RAM_3} {inst:ORCA_TOP/I_PCI_TOP/I_PCI_WRITE_FIFO\/PCI_FIFO_RAM_4} {inst:ORCA_TOP/I_PCI_TOP/I_PCI_WRITE_FIFO\/PCI_FIFO_RAM_5} {inst:ORCA_TOP/I_PCI_TOP/I_PCI_WRITE_FIFO\/PCI_FIFO_RAM_6} {inst:ORCA_TOP/I_PCI_TOP/I_PCI_WRITE_FIFO\/PCI_FIFO_RAM_7} {inst:ORCA_TOP/I_PCI_TOP/I_PCI_WRITE_FIFO\/PCI_FIFO_RAM_8} {inst:ORCA_TOP/I_RISC_CORE/I_REG_FILE\/REG_FILE_A_RAM} {inst:ORCA_TOP/I_RISC_CORE/I_REG_FILE\/REG_FILE_B_RAM} {inst:ORCA_TOP/I_RISC_CORE/I_REG_FILE\/REG_FILE_C_RAM} {inst:ORCA_TOP/I_RISC_CORE/I_REG_FILE\/REG_FILE_D_RAM} inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!3 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!4 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!7 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!8 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!11 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!12 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!13 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!14 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!17 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!18 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!19 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!20 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!23 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!24 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!25 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!26 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!29 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!30 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!31 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!32 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!35 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!36 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!37 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!38 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!41 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!42 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!43 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!44 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!47 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!48 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!49 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!50 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!53 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!54 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!55 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!56 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!59 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!60 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!61 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!62 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!65 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!66 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!67 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!68 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!71 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!72 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!73 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!74 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!77 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!78 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!79 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!80 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!83 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!84 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!85 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!86 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!89 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!90 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!91 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!92 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!95 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!96 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!97 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!98 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!101 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!102 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!103 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!104 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!107 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!108 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!109 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!110 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!113 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!114 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!115 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!116 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!119 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!120 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!121 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!122 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!125 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!126 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!127 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!128 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!131 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!132 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!133 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!134 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!137 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!138 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!139 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!140 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!143 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!144 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!145 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!146 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!149 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!150 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!151 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!152 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!155 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!156 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!157 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!158 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!161 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!162 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!163 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!164 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!167 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!168 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!169 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!170 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!173 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!174 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!175 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!176 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!179 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!180 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!181 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!182 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!185 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!186 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!187 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!188 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!191 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!192 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!193 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!194 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!197 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!198 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!199 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!200 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!203 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!204 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!205 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!206 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!209 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!210 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!211 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!212 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!215 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!216 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!217 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!218 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!221 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!222 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!223 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!224 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!227 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!228 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!229 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!230 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!233 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!234 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!235 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!236 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!239 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!240 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!241 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!242 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!245 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!246 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!247 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!248 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!251 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!252 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!253 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!254 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!257 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!258 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!259 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!260 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!263 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!264 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!265 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!266 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!269 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!270 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!271 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!272 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!275 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!276 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!277 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!278 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!281 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!282 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!283 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!284 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!287 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!288 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!289 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!290 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!293 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!294 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!295 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!296 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!299 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!300 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!301 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!302 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!305 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!306 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!307 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!308 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!311 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!312 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!313 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!314 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!317 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!318 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!319 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!320 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!323 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!324 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!325 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!326 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!329 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!330 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!331 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!332 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!335 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!336 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!337 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!338 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!341 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!342 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!343 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!344 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!347 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!348 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!349 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!350 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!353 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!354 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!355 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!356 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!359 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!360 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!361 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!362 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!365 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!366 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!367 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!368 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!371 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!372 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!373 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!374 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!377 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!378 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!379 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!380 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!383 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!384 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!385 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!386 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!389 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!390 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!391 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!392 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!395 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!396 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!397 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!398 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!401 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!402 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!403 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!404 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!407 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!408 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!409 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!410 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!413 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!414 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!415 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!416 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!419 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!420 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!421 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!422 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!425 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!426 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!427 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!428 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!431 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!432 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!433 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!434 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!437 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!438 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!439 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!440 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!443 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!444 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!445 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!446 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!449 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!450 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!451 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!452 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!455 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!456 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!457 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!458 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!461 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!462 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!463 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!464 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!467 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!468 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!469 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!470 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!473 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!474 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!475 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!476 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!479 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!480 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!481 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!482 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!485 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!486 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!487 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!488 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!491 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!492 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!493 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!494 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!497 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!498 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!499 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!500 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!503 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!504 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!505 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!506 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!509 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!510 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!511 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!512 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!515 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!516 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!517 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!518 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!521 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!522 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!523 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!524 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!527 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!528 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!529 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!530 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!533 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!534 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!535 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!536 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!539 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!540 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!541 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!542 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!545 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!546 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!547 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!548 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!551 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!552 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!553 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!554 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!557 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!558 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!559 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!560 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!563 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!564 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!565 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!566 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!569 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!570 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!571 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!572 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!575 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!576 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!579 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!580 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!583 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!584 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!587 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!588 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!591 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!592 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!595 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!596 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!599 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!600 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!603 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!604 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!607 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!608 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!611 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!612 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!615 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!616 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!619 inst:ORCA_TOP/I_RISC_CORE/xoendcap!DCAP_HVT!620 {inst:ORCA_TOP/I_SDRAM_TOP/I_SDRAM_READ_FIFO\/SD_FIFO_RAM_0} {inst:ORCA_TOP/I_SDRAM_TOP/I_SDRAM_READ_FIFO\/SD_FIFO_RAM_1} {inst:ORCA_TOP/I_SDRAM_TOP/I_SDRAM_WRITE_FIFO\/SD_FIFO_RAM_0} {inst:ORCA_TOP/I_SDRAM_TOP/I_SDRAM_WRITE_FIFO\/SD_FIFO_RAM_1}}
select_obj {}
defOut -selected ../outputs/ORCA_TOP.floorplan.innovus.macros_hier_grp_v1.def
deselectAll
uiSetTool ruler
zoomBox 46.46100 -16.92100 937.48800 453.95200
zoomBox -28.67800 -21.56200 1019.58900 532.40600
zoomBox -117.07700 -27.02200 1116.17800 624.70500
zoomBox -221.07600 -33.44600 1229.81200 733.29200
zoomBox 164.61500 -9.62400 808.38400 330.58300
zoomBox 341.03400 -2.57800 626.67900 148.37400
zoomBox 434.45900 4.07500 542.19200 61.00800
zoomBox 364.78700 -3.51900 607.59200 124.79400
zoomBox 383.57300 -2.80200 589.95800 106.26400
zoomBox 442.79300 -0.94900 534.36800 47.44500
zoomBox 449.87800 -0.72700 527.71700 40.40800
zoomBox 423.72200 -1.55200 550.47100 65.43000
zoomBox 469.66600 -0.78700 510.30100 20.68700
zoomBox 483.16500 -0.57500 498.49100 7.52400
zoomBox 488.32900 -0.32800 494.11000 2.72700
zoomBox 481.58500 -1.06900 499.62200 8.46300
zoomBox 472.49700 -2.06600 507.05000 16.19400
zoomBox 491.73900 -0.72100 502.81700 5.13300
zoomBox 496.96600 -0.25700 501.14600 1.95200
zoomBox 498.47800 -0.12400 500.66100 1.03000
zoomBox 496.01000 -1.09300 501.80400 1.96900
zoomBox 493.51900 -2.03100 502.95600 2.95600
zoomBox 482.85700 -6.04200 507.88600 7.18500
zoomBox 461.22500 -11.73700 517.63300 18.07200
fit
zoomBox 60.22200 371.82100 951.24900 842.69400
zoomBox 270.93000 587.31600 736.05200 833.11500
zoomBox 380.92000 699.80600 623.71700 828.11500
zoomBox 438.33400 758.52600 565.07800 825.50500
zoomBox 468.30500 789.17900 534.46900 824.14400
zoomBox 393.21400 733.30400 599.60800 842.37500
zoomBox 373.71000 718.79100 616.52700 847.11000
uiSetTool ruler
zoomBox 350.61400 701.32500 636.28100 852.28900
zoomBox 323.44200 680.77700 659.52100 858.38200
zoomBox 291.47400 656.60400 686.86200 865.55100
zoomBox 253.86500 628.16400 719.02800 873.98500
zoomBox 282.94100 655.32800 678.33000 864.27600
zoomBox 342.01600 715.26200 584.83600 843.58300
zoomBox 356.11900 729.57000 562.51600 838.64300
zoomBox 422.98600 788.07700 479.22900 817.79900
zoomBox 432.68400 797.06000 467.22600 815.31400
zoomBox 418.45900 785.83300 484.63000 820.80200
zoomBox 369.30700 746.82000 544.76000 839.54000
zoomBox 320.34300 708.29400 606.04100 859.27400
zoomBox 297.95000 690.43700 634.06600 868.06100
zoomBox 271.60600 669.42800 667.03700 878.39800
zoomBox 204.15100 615.63600 751.46100 904.86800
zoomBox -15.33200 448.49400 1033.14500 1002.57300
zoomBox -300.05400 304.51300 1407.21700 1206.73900
zoomBox -576.08000 194.84000 1786.92500 1443.59600
zoomBox -753.95700 111.32300 2026.04800 1580.44700
fit
zoomBox 8.04400 -20.93600 899.07300 449.93800
zoomBox 65.61900 -17.64900 822.99400 382.59400
zoomBox 114.55800 -14.85500 758.32700 325.35200
zoomBox -203.18000 -154.87400 1030.08000 496.85600
zoomBox -320.48500 -206.56800 1130.40900 560.17300
zoomBox -458.49100 -267.38400 1248.44300 634.66400
zoomBox -620.85200 -338.93300 1387.30600 722.30000
zoomBox -510.77700 -221.23800 1196.15700 680.81000
zoomBox -439.70500 -120.29800 1011.18900 646.44300
zoomBox -379.90500 -34.34600 853.35500 617.38400
zoomBox -328.68500 35.85400 719.58600 589.82400
zoomBox -283.60200 96.96000 607.42900 567.83500
zoomBox -243.87300 150.59100 513.50400 550.83500
zoomBox -124.55800 302.21700 270.79900 511.14800
zoomBox -88.05600 346.28400 197.59100 497.23700
zoomBox -73.72400 362.51300 169.07600 490.82300
zoomBox -281.43800 222.89200 475.94900 623.14100
zoomBox -483.63300 -33.35500 1223.32900 868.70800
gui_group_hinst
fit
summaryReport
summaryReport -noHtml
summaryReport -noHtml -outfile summary.rpt
report_design
checkFPlan
checkFPlan -reportUtil
