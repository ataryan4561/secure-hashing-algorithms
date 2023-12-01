# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1 \
    name str \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_str \
    op interface \
    ports { m_axi_str_AWVALID { O 1 bit } m_axi_str_AWREADY { I 1 bit } m_axi_str_AWADDR { O 32 vector } m_axi_str_AWID { O 1 vector } m_axi_str_AWLEN { O 32 vector } m_axi_str_AWSIZE { O 3 vector } m_axi_str_AWBURST { O 2 vector } m_axi_str_AWLOCK { O 2 vector } m_axi_str_AWCACHE { O 4 vector } m_axi_str_AWPROT { O 3 vector } m_axi_str_AWQOS { O 4 vector } m_axi_str_AWREGION { O 4 vector } m_axi_str_AWUSER { O 1 vector } m_axi_str_WVALID { O 1 bit } m_axi_str_WREADY { I 1 bit } m_axi_str_WDATA { O 8 vector } m_axi_str_WSTRB { O 1 vector } m_axi_str_WLAST { O 1 bit } m_axi_str_WID { O 1 vector } m_axi_str_WUSER { O 1 vector } m_axi_str_ARVALID { O 1 bit } m_axi_str_ARREADY { I 1 bit } m_axi_str_ARADDR { O 32 vector } m_axi_str_ARID { O 1 vector } m_axi_str_ARLEN { O 32 vector } m_axi_str_ARSIZE { O 3 vector } m_axi_str_ARBURST { O 2 vector } m_axi_str_ARLOCK { O 2 vector } m_axi_str_ARCACHE { O 4 vector } m_axi_str_ARPROT { O 3 vector } m_axi_str_ARQOS { O 4 vector } m_axi_str_ARREGION { O 4 vector } m_axi_str_ARUSER { O 1 vector } m_axi_str_RVALID { I 1 bit } m_axi_str_RREADY { O 1 bit } m_axi_str_RDATA { I 8 vector } m_axi_str_RLAST { I 1 bit } m_axi_str_RID { I 1 vector } m_axi_str_RUSER { I 1 vector } m_axi_str_RRESP { I 2 vector } m_axi_str_BVALID { I 1 bit } m_axi_str_BREADY { O 1 bit } m_axi_str_BRESP { I 2 vector } m_axi_str_BID { I 1 vector } m_axi_str_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name str_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_str_offset \
    op interface \
    ports { str_offset { I 32 vector } } \
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

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 64 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
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
    id -4 \
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


