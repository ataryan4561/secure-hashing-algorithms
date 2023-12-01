# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 18 \
    name ctx_data \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename ctx_data \
    op interface \
    ports { ctx_data_address0 { O 6 vector } ctx_data_ce0 { O 1 bit } ctx_data_we0 { O 1 bit } ctx_data_d0 { O 8 vector } ctx_data_q0 { I 8 vector } ctx_data_address1 { O 6 vector } ctx_data_ce1 { O 1 bit } ctx_data_we1 { O 1 bit } ctx_data_d1 { O 8 vector } ctx_data_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'ctx_data'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name ctx_datalen_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ctx_datalen_read \
    op interface \
    ports { ctx_datalen_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name ctx_bitlen_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ctx_bitlen_read \
    op interface \
    ports { ctx_bitlen_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name p_read2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read2 \
    op interface \
    ports { p_read2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name p_read3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read3 \
    op interface \
    ports { p_read3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name p_read4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read4 \
    op interface \
    ports { p_read4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name p_read5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read5 \
    op interface \
    ports { p_read5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name p_read6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read6 \
    op interface \
    ports { p_read6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name p_read7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read7 \
    op interface \
    ports { p_read7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name p_read8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read8 \
    op interface \
    ports { p_read8 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name p_read9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read9 \
    op interface \
    ports { p_read9 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name hash \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_hash \
    op interface \
    ports { m_axi_hash_AWVALID { O 1 bit } m_axi_hash_AWREADY { I 1 bit } m_axi_hash_AWADDR { O 32 vector } m_axi_hash_AWID { O 1 vector } m_axi_hash_AWLEN { O 32 vector } m_axi_hash_AWSIZE { O 3 vector } m_axi_hash_AWBURST { O 2 vector } m_axi_hash_AWLOCK { O 2 vector } m_axi_hash_AWCACHE { O 4 vector } m_axi_hash_AWPROT { O 3 vector } m_axi_hash_AWQOS { O 4 vector } m_axi_hash_AWREGION { O 4 vector } m_axi_hash_AWUSER { O 1 vector } m_axi_hash_WVALID { O 1 bit } m_axi_hash_WREADY { I 1 bit } m_axi_hash_WDATA { O 8 vector } m_axi_hash_WSTRB { O 1 vector } m_axi_hash_WLAST { O 1 bit } m_axi_hash_WID { O 1 vector } m_axi_hash_WUSER { O 1 vector } m_axi_hash_ARVALID { O 1 bit } m_axi_hash_ARREADY { I 1 bit } m_axi_hash_ARADDR { O 32 vector } m_axi_hash_ARID { O 1 vector } m_axi_hash_ARLEN { O 32 vector } m_axi_hash_ARSIZE { O 3 vector } m_axi_hash_ARBURST { O 2 vector } m_axi_hash_ARLOCK { O 2 vector } m_axi_hash_ARCACHE { O 4 vector } m_axi_hash_ARPROT { O 3 vector } m_axi_hash_ARQOS { O 4 vector } m_axi_hash_ARREGION { O 4 vector } m_axi_hash_ARUSER { O 1 vector } m_axi_hash_RVALID { I 1 bit } m_axi_hash_RREADY { O 1 bit } m_axi_hash_RDATA { I 8 vector } m_axi_hash_RLAST { I 1 bit } m_axi_hash_RID { I 1 vector } m_axi_hash_RUSER { I 1 vector } m_axi_hash_RRESP { I 2 vector } m_axi_hash_BVALID { I 1 bit } m_axi_hash_BREADY { O 1 bit } m_axi_hash_BRESP { I 2 vector } m_axi_hash_BID { I 1 vector } m_axi_hash_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name hash_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hash_offset \
    op interface \
    ports { hash_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


