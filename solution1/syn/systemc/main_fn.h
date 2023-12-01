// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _main_fn_HH_
#define _main_fn_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "sha256_final.h"
#include "sha256_update.h"
#include "calculateStringLengt.h"
#include "main_fn_ctx_data.h"
#include "main_fn_AXILiteS_s_axi.h"
#include "main_fn_gmem_m_axi.h"

namespace ap_rtl {

template<unsigned int C_M_AXI_GMEM_ADDR_WIDTH = 32,
         unsigned int C_M_AXI_GMEM_ID_WIDTH = 1,
         unsigned int C_M_AXI_GMEM_AWUSER_WIDTH = 1,
         unsigned int C_M_AXI_GMEM_DATA_WIDTH = 32,
         unsigned int C_M_AXI_GMEM_WUSER_WIDTH = 1,
         unsigned int C_M_AXI_GMEM_ARUSER_WIDTH = 1,
         unsigned int C_M_AXI_GMEM_RUSER_WIDTH = 1,
         unsigned int C_M_AXI_GMEM_BUSER_WIDTH = 1,
         unsigned int C_S_AXI_AXILITES_ADDR_WIDTH = 5,
         unsigned int C_S_AXI_AXILITES_DATA_WIDTH = 32>
struct main_fn : public sc_module {
    // Port declarations 65
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_out< sc_logic > m_axi_gmem_AWVALID;
    sc_in< sc_logic > m_axi_gmem_AWREADY;
    sc_out< sc_uint<C_M_AXI_GMEM_ADDR_WIDTH> > m_axi_gmem_AWADDR;
    sc_out< sc_uint<C_M_AXI_GMEM_ID_WIDTH> > m_axi_gmem_AWID;
    sc_out< sc_lv<8> > m_axi_gmem_AWLEN;
    sc_out< sc_lv<3> > m_axi_gmem_AWSIZE;
    sc_out< sc_lv<2> > m_axi_gmem_AWBURST;
    sc_out< sc_lv<2> > m_axi_gmem_AWLOCK;
    sc_out< sc_lv<4> > m_axi_gmem_AWCACHE;
    sc_out< sc_lv<3> > m_axi_gmem_AWPROT;
    sc_out< sc_lv<4> > m_axi_gmem_AWQOS;
    sc_out< sc_lv<4> > m_axi_gmem_AWREGION;
    sc_out< sc_uint<C_M_AXI_GMEM_AWUSER_WIDTH> > m_axi_gmem_AWUSER;
    sc_out< sc_logic > m_axi_gmem_WVALID;
    sc_in< sc_logic > m_axi_gmem_WREADY;
    sc_out< sc_uint<C_M_AXI_GMEM_DATA_WIDTH> > m_axi_gmem_WDATA;
    sc_out< sc_uint<C_M_AXI_GMEM_DATA_WIDTH/8> > m_axi_gmem_WSTRB;
    sc_out< sc_logic > m_axi_gmem_WLAST;
    sc_out< sc_uint<C_M_AXI_GMEM_ID_WIDTH> > m_axi_gmem_WID;
    sc_out< sc_uint<C_M_AXI_GMEM_WUSER_WIDTH> > m_axi_gmem_WUSER;
    sc_out< sc_logic > m_axi_gmem_ARVALID;
    sc_in< sc_logic > m_axi_gmem_ARREADY;
    sc_out< sc_uint<C_M_AXI_GMEM_ADDR_WIDTH> > m_axi_gmem_ARADDR;
    sc_out< sc_uint<C_M_AXI_GMEM_ID_WIDTH> > m_axi_gmem_ARID;
    sc_out< sc_lv<8> > m_axi_gmem_ARLEN;
    sc_out< sc_lv<3> > m_axi_gmem_ARSIZE;
    sc_out< sc_lv<2> > m_axi_gmem_ARBURST;
    sc_out< sc_lv<2> > m_axi_gmem_ARLOCK;
    sc_out< sc_lv<4> > m_axi_gmem_ARCACHE;
    sc_out< sc_lv<3> > m_axi_gmem_ARPROT;
    sc_out< sc_lv<4> > m_axi_gmem_ARQOS;
    sc_out< sc_lv<4> > m_axi_gmem_ARREGION;
    sc_out< sc_uint<C_M_AXI_GMEM_ARUSER_WIDTH> > m_axi_gmem_ARUSER;
    sc_in< sc_logic > m_axi_gmem_RVALID;
    sc_out< sc_logic > m_axi_gmem_RREADY;
    sc_in< sc_uint<C_M_AXI_GMEM_DATA_WIDTH> > m_axi_gmem_RDATA;
    sc_in< sc_logic > m_axi_gmem_RLAST;
    sc_in< sc_uint<C_M_AXI_GMEM_ID_WIDTH> > m_axi_gmem_RID;
    sc_in< sc_uint<C_M_AXI_GMEM_RUSER_WIDTH> > m_axi_gmem_RUSER;
    sc_in< sc_lv<2> > m_axi_gmem_RRESP;
    sc_in< sc_logic > m_axi_gmem_BVALID;
    sc_out< sc_logic > m_axi_gmem_BREADY;
    sc_in< sc_lv<2> > m_axi_gmem_BRESP;
    sc_in< sc_uint<C_M_AXI_GMEM_ID_WIDTH> > m_axi_gmem_BID;
    sc_in< sc_uint<C_M_AXI_GMEM_BUSER_WIDTH> > m_axi_gmem_BUSER;
    sc_in< sc_logic > s_axi_AXILiteS_AWVALID;
    sc_out< sc_logic > s_axi_AXILiteS_AWREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_ADDR_WIDTH> > s_axi_AXILiteS_AWADDR;
    sc_in< sc_logic > s_axi_AXILiteS_WVALID;
    sc_out< sc_logic > s_axi_AXILiteS_WREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH> > s_axi_AXILiteS_WDATA;
    sc_in< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH/8> > s_axi_AXILiteS_WSTRB;
    sc_in< sc_logic > s_axi_AXILiteS_ARVALID;
    sc_out< sc_logic > s_axi_AXILiteS_ARREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_ADDR_WIDTH> > s_axi_AXILiteS_ARADDR;
    sc_out< sc_logic > s_axi_AXILiteS_RVALID;
    sc_in< sc_logic > s_axi_AXILiteS_RREADY;
    sc_out< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH> > s_axi_AXILiteS_RDATA;
    sc_out< sc_lv<2> > s_axi_AXILiteS_RRESP;
    sc_out< sc_logic > s_axi_AXILiteS_BVALID;
    sc_in< sc_logic > s_axi_AXILiteS_BREADY;
    sc_out< sc_lv<2> > s_axi_AXILiteS_BRESP;
    sc_out< sc_logic > interrupt;
    sc_signal< sc_logic > ap_var_for_const0;
    sc_signal< sc_logic > ap_var_for_const1;
    sc_signal< sc_lv<8> > ap_var_for_const2;
    sc_signal< sc_lv<1> > ap_var_for_const3;
    sc_signal< sc_lv<2> > ap_var_for_const4;


    // Module declarations
    main_fn(sc_module_name name);
    SC_HAS_PROCESS(main_fn);

    ~main_fn();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    main_fn_AXILiteS_s_axi<C_S_AXI_AXILITES_ADDR_WIDTH,C_S_AXI_AXILITES_DATA_WIDTH>* main_fn_AXILiteS_s_axi_U;
    main_fn_gmem_m_axi<0,8,32,5,16,16,16,16,C_M_AXI_GMEM_ID_WIDTH,C_M_AXI_GMEM_ADDR_WIDTH,C_M_AXI_GMEM_DATA_WIDTH,C_M_AXI_GMEM_AWUSER_WIDTH,C_M_AXI_GMEM_ARUSER_WIDTH,C_M_AXI_GMEM_WUSER_WIDTH,C_M_AXI_GMEM_RUSER_WIDTH,C_M_AXI_GMEM_BUSER_WIDTH,C_M_AXI_GMEM_USER_VALUE,C_M_AXI_GMEM_PROT_VALUE,C_M_AXI_GMEM_CACHE_VALUE>* main_fn_gmem_m_axi_U;
    main_fn_ctx_data* ctx_data_U;
    sha256_final* grp_sha256_final_fu_68;
    sha256_update* grp_sha256_update_fu_88;
    calculateStringLengt* grp_calculateStringLengt_fu_99;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_logic > ap_start;
    sc_signal< sc_logic > ap_done;
    sc_signal< sc_logic > ap_idle;
    sc_signal< sc_lv<6> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > ap_ready;
    sc_signal< sc_lv<32> > input_r;
    sc_signal< sc_lv<32> > output_r;
    sc_signal< sc_logic > gmem_AWVALID;
    sc_signal< sc_logic > gmem_AWREADY;
    sc_signal< sc_logic > gmem_WVALID;
    sc_signal< sc_logic > gmem_WREADY;
    sc_signal< sc_logic > gmem_ARVALID;
    sc_signal< sc_logic > gmem_ARREADY;
    sc_signal< sc_lv<32> > gmem_ARADDR;
    sc_signal< sc_lv<1> > gmem_ARID;
    sc_signal< sc_lv<32> > gmem_ARLEN;
    sc_signal< sc_lv<3> > gmem_ARSIZE;
    sc_signal< sc_lv<2> > gmem_ARBURST;
    sc_signal< sc_lv<2> > gmem_ARLOCK;
    sc_signal< sc_lv<4> > gmem_ARCACHE;
    sc_signal< sc_lv<3> > gmem_ARPROT;
    sc_signal< sc_lv<4> > gmem_ARQOS;
    sc_signal< sc_lv<4> > gmem_ARREGION;
    sc_signal< sc_lv<1> > gmem_ARUSER;
    sc_signal< sc_logic > gmem_RVALID;
    sc_signal< sc_logic > gmem_RREADY;
    sc_signal< sc_lv<8> > gmem_RDATA;
    sc_signal< sc_logic > gmem_RLAST;
    sc_signal< sc_lv<1> > gmem_RID;
    sc_signal< sc_lv<1> > gmem_RUSER;
    sc_signal< sc_lv<2> > gmem_RRESP;
    sc_signal< sc_logic > gmem_BVALID;
    sc_signal< sc_logic > gmem_BREADY;
    sc_signal< sc_lv<2> > gmem_BRESP;
    sc_signal< sc_lv<1> > gmem_BID;
    sc_signal< sc_lv<1> > gmem_BUSER;
    sc_signal< sc_lv<32> > output_read_reg_147;
    sc_signal< sc_lv<32> > input_read_reg_152;
    sc_signal< sc_lv<64> > grp_calculateStringLengt_fu_99_ap_return;
    sc_signal< sc_lv<64> > tmp_reg_158;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > grp_calculateStringLengt_fu_99_ap_ready;
    sc_signal< sc_logic > grp_calculateStringLengt_fu_99_ap_done;
    sc_signal< sc_lv<64> > ctx_bitlen_reg_163;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > grp_sha256_update_fu_88_ap_ready;
    sc_signal< sc_logic > grp_sha256_update_fu_88_ap_done;
    sc_signal< sc_lv<32> > ctx_datalen_reg_168;
    sc_signal< sc_lv<32> > ctx_state_0_reg_173;
    sc_signal< sc_lv<32> > ctx_state_1_reg_178;
    sc_signal< sc_lv<32> > ctx_state_2_reg_183;
    sc_signal< sc_lv<32> > ctx_state_3_reg_188;
    sc_signal< sc_lv<32> > ctx_state_4_reg_193;
    sc_signal< sc_lv<32> > ctx_state_5_reg_198;
    sc_signal< sc_lv<32> > ctx_state_6_reg_203;
    sc_signal< sc_lv<32> > ctx_state_7_reg_208;
    sc_signal< sc_lv<6> > ctx_data_address0;
    sc_signal< sc_logic > ctx_data_ce0;
    sc_signal< sc_logic > ctx_data_we0;
    sc_signal< sc_lv<8> > ctx_data_d0;
    sc_signal< sc_lv<8> > ctx_data_q0;
    sc_signal< sc_lv<6> > ctx_data_address1;
    sc_signal< sc_logic > ctx_data_ce1;
    sc_signal< sc_logic > ctx_data_we1;
    sc_signal< sc_lv<8> > ctx_data_q1;
    sc_signal< sc_logic > grp_sha256_final_fu_68_ap_start;
    sc_signal< sc_logic > grp_sha256_final_fu_68_ap_done;
    sc_signal< sc_logic > grp_sha256_final_fu_68_ap_idle;
    sc_signal< sc_logic > grp_sha256_final_fu_68_ap_ready;
    sc_signal< sc_lv<6> > grp_sha256_final_fu_68_ctx_data_address0;
    sc_signal< sc_logic > grp_sha256_final_fu_68_ctx_data_ce0;
    sc_signal< sc_logic > grp_sha256_final_fu_68_ctx_data_we0;
    sc_signal< sc_lv<8> > grp_sha256_final_fu_68_ctx_data_d0;
    sc_signal< sc_lv<6> > grp_sha256_final_fu_68_ctx_data_address1;
    sc_signal< sc_logic > grp_sha256_final_fu_68_ctx_data_ce1;
    sc_signal< sc_logic > grp_sha256_final_fu_68_ctx_data_we1;
    sc_signal< sc_lv<8> > grp_sha256_final_fu_68_ctx_data_d1;
    sc_signal< sc_logic > grp_sha256_final_fu_68_m_axi_hash_AWVALID;
    sc_signal< sc_lv<32> > grp_sha256_final_fu_68_m_axi_hash_AWADDR;
    sc_signal< sc_lv<1> > grp_sha256_final_fu_68_m_axi_hash_AWID;
    sc_signal< sc_lv<32> > grp_sha256_final_fu_68_m_axi_hash_AWLEN;
    sc_signal< sc_lv<3> > grp_sha256_final_fu_68_m_axi_hash_AWSIZE;
    sc_signal< sc_lv<2> > grp_sha256_final_fu_68_m_axi_hash_AWBURST;
    sc_signal< sc_lv<2> > grp_sha256_final_fu_68_m_axi_hash_AWLOCK;
    sc_signal< sc_lv<4> > grp_sha256_final_fu_68_m_axi_hash_AWCACHE;
    sc_signal< sc_lv<3> > grp_sha256_final_fu_68_m_axi_hash_AWPROT;
    sc_signal< sc_lv<4> > grp_sha256_final_fu_68_m_axi_hash_AWQOS;
    sc_signal< sc_lv<4> > grp_sha256_final_fu_68_m_axi_hash_AWREGION;
    sc_signal< sc_lv<1> > grp_sha256_final_fu_68_m_axi_hash_AWUSER;
    sc_signal< sc_logic > grp_sha256_final_fu_68_m_axi_hash_WVALID;
    sc_signal< sc_lv<8> > grp_sha256_final_fu_68_m_axi_hash_WDATA;
    sc_signal< sc_lv<1> > grp_sha256_final_fu_68_m_axi_hash_WSTRB;
    sc_signal< sc_logic > grp_sha256_final_fu_68_m_axi_hash_WLAST;
    sc_signal< sc_lv<1> > grp_sha256_final_fu_68_m_axi_hash_WID;
    sc_signal< sc_lv<1> > grp_sha256_final_fu_68_m_axi_hash_WUSER;
    sc_signal< sc_logic > grp_sha256_final_fu_68_m_axi_hash_ARVALID;
    sc_signal< sc_lv<32> > grp_sha256_final_fu_68_m_axi_hash_ARADDR;
    sc_signal< sc_lv<1> > grp_sha256_final_fu_68_m_axi_hash_ARID;
    sc_signal< sc_lv<32> > grp_sha256_final_fu_68_m_axi_hash_ARLEN;
    sc_signal< sc_lv<3> > grp_sha256_final_fu_68_m_axi_hash_ARSIZE;
    sc_signal< sc_lv<2> > grp_sha256_final_fu_68_m_axi_hash_ARBURST;
    sc_signal< sc_lv<2> > grp_sha256_final_fu_68_m_axi_hash_ARLOCK;
    sc_signal< sc_lv<4> > grp_sha256_final_fu_68_m_axi_hash_ARCACHE;
    sc_signal< sc_lv<3> > grp_sha256_final_fu_68_m_axi_hash_ARPROT;
    sc_signal< sc_lv<4> > grp_sha256_final_fu_68_m_axi_hash_ARQOS;
    sc_signal< sc_lv<4> > grp_sha256_final_fu_68_m_axi_hash_ARREGION;
    sc_signal< sc_lv<1> > grp_sha256_final_fu_68_m_axi_hash_ARUSER;
    sc_signal< sc_logic > grp_sha256_final_fu_68_m_axi_hash_RREADY;
    sc_signal< sc_logic > grp_sha256_final_fu_68_m_axi_hash_BREADY;
    sc_signal< sc_logic > grp_sha256_update_fu_88_ap_start;
    sc_signal< sc_logic > grp_sha256_update_fu_88_ap_idle;
    sc_signal< sc_lv<6> > grp_sha256_update_fu_88_ctx_data_address0;
    sc_signal< sc_logic > grp_sha256_update_fu_88_ctx_data_ce0;
    sc_signal< sc_logic > grp_sha256_update_fu_88_ctx_data_we0;
    sc_signal< sc_lv<8> > grp_sha256_update_fu_88_ctx_data_d0;
    sc_signal< sc_lv<6> > grp_sha256_update_fu_88_ctx_data_address1;
    sc_signal< sc_logic > grp_sha256_update_fu_88_ctx_data_ce1;
    sc_signal< sc_logic > grp_sha256_update_fu_88_m_axi_data_AWVALID;
    sc_signal< sc_lv<32> > grp_sha256_update_fu_88_m_axi_data_AWADDR;
    sc_signal< sc_lv<1> > grp_sha256_update_fu_88_m_axi_data_AWID;
    sc_signal< sc_lv<32> > grp_sha256_update_fu_88_m_axi_data_AWLEN;
    sc_signal< sc_lv<3> > grp_sha256_update_fu_88_m_axi_data_AWSIZE;
    sc_signal< sc_lv<2> > grp_sha256_update_fu_88_m_axi_data_AWBURST;
    sc_signal< sc_lv<2> > grp_sha256_update_fu_88_m_axi_data_AWLOCK;
    sc_signal< sc_lv<4> > grp_sha256_update_fu_88_m_axi_data_AWCACHE;
    sc_signal< sc_lv<3> > grp_sha256_update_fu_88_m_axi_data_AWPROT;
    sc_signal< sc_lv<4> > grp_sha256_update_fu_88_m_axi_data_AWQOS;
    sc_signal< sc_lv<4> > grp_sha256_update_fu_88_m_axi_data_AWREGION;
    sc_signal< sc_lv<1> > grp_sha256_update_fu_88_m_axi_data_AWUSER;
    sc_signal< sc_logic > grp_sha256_update_fu_88_m_axi_data_WVALID;
    sc_signal< sc_lv<8> > grp_sha256_update_fu_88_m_axi_data_WDATA;
    sc_signal< sc_lv<1> > grp_sha256_update_fu_88_m_axi_data_WSTRB;
    sc_signal< sc_logic > grp_sha256_update_fu_88_m_axi_data_WLAST;
    sc_signal< sc_lv<1> > grp_sha256_update_fu_88_m_axi_data_WID;
    sc_signal< sc_lv<1> > grp_sha256_update_fu_88_m_axi_data_WUSER;
    sc_signal< sc_logic > grp_sha256_update_fu_88_m_axi_data_ARVALID;
    sc_signal< sc_lv<32> > grp_sha256_update_fu_88_m_axi_data_ARADDR;
    sc_signal< sc_lv<1> > grp_sha256_update_fu_88_m_axi_data_ARID;
    sc_signal< sc_lv<32> > grp_sha256_update_fu_88_m_axi_data_ARLEN;
    sc_signal< sc_lv<3> > grp_sha256_update_fu_88_m_axi_data_ARSIZE;
    sc_signal< sc_lv<2> > grp_sha256_update_fu_88_m_axi_data_ARBURST;
    sc_signal< sc_lv<2> > grp_sha256_update_fu_88_m_axi_data_ARLOCK;
    sc_signal< sc_lv<4> > grp_sha256_update_fu_88_m_axi_data_ARCACHE;
    sc_signal< sc_lv<3> > grp_sha256_update_fu_88_m_axi_data_ARPROT;
    sc_signal< sc_lv<4> > grp_sha256_update_fu_88_m_axi_data_ARQOS;
    sc_signal< sc_lv<4> > grp_sha256_update_fu_88_m_axi_data_ARREGION;
    sc_signal< sc_lv<1> > grp_sha256_update_fu_88_m_axi_data_ARUSER;
    sc_signal< sc_logic > grp_sha256_update_fu_88_m_axi_data_RREADY;
    sc_signal< sc_logic > grp_sha256_update_fu_88_m_axi_data_BREADY;
    sc_signal< sc_lv<32> > grp_sha256_update_fu_88_ap_return_0;
    sc_signal< sc_lv<64> > grp_sha256_update_fu_88_ap_return_1;
    sc_signal< sc_lv<32> > grp_sha256_update_fu_88_ap_return_2;
    sc_signal< sc_lv<32> > grp_sha256_update_fu_88_ap_return_3;
    sc_signal< sc_lv<32> > grp_sha256_update_fu_88_ap_return_4;
    sc_signal< sc_lv<32> > grp_sha256_update_fu_88_ap_return_5;
    sc_signal< sc_lv<32> > grp_sha256_update_fu_88_ap_return_6;
    sc_signal< sc_lv<32> > grp_sha256_update_fu_88_ap_return_7;
    sc_signal< sc_lv<32> > grp_sha256_update_fu_88_ap_return_8;
    sc_signal< sc_lv<32> > grp_sha256_update_fu_88_ap_return_9;
    sc_signal< sc_logic > grp_calculateStringLengt_fu_99_ap_start;
    sc_signal< sc_logic > grp_calculateStringLengt_fu_99_ap_idle;
    sc_signal< sc_logic > grp_calculateStringLengt_fu_99_m_axi_str_AWVALID;
    sc_signal< sc_lv<32> > grp_calculateStringLengt_fu_99_m_axi_str_AWADDR;
    sc_signal< sc_lv<1> > grp_calculateStringLengt_fu_99_m_axi_str_AWID;
    sc_signal< sc_lv<32> > grp_calculateStringLengt_fu_99_m_axi_str_AWLEN;
    sc_signal< sc_lv<3> > grp_calculateStringLengt_fu_99_m_axi_str_AWSIZE;
    sc_signal< sc_lv<2> > grp_calculateStringLengt_fu_99_m_axi_str_AWBURST;
    sc_signal< sc_lv<2> > grp_calculateStringLengt_fu_99_m_axi_str_AWLOCK;
    sc_signal< sc_lv<4> > grp_calculateStringLengt_fu_99_m_axi_str_AWCACHE;
    sc_signal< sc_lv<3> > grp_calculateStringLengt_fu_99_m_axi_str_AWPROT;
    sc_signal< sc_lv<4> > grp_calculateStringLengt_fu_99_m_axi_str_AWQOS;
    sc_signal< sc_lv<4> > grp_calculateStringLengt_fu_99_m_axi_str_AWREGION;
    sc_signal< sc_lv<1> > grp_calculateStringLengt_fu_99_m_axi_str_AWUSER;
    sc_signal< sc_logic > grp_calculateStringLengt_fu_99_m_axi_str_WVALID;
    sc_signal< sc_lv<8> > grp_calculateStringLengt_fu_99_m_axi_str_WDATA;
    sc_signal< sc_lv<1> > grp_calculateStringLengt_fu_99_m_axi_str_WSTRB;
    sc_signal< sc_logic > grp_calculateStringLengt_fu_99_m_axi_str_WLAST;
    sc_signal< sc_lv<1> > grp_calculateStringLengt_fu_99_m_axi_str_WID;
    sc_signal< sc_lv<1> > grp_calculateStringLengt_fu_99_m_axi_str_WUSER;
    sc_signal< sc_logic > grp_calculateStringLengt_fu_99_m_axi_str_ARVALID;
    sc_signal< sc_lv<32> > grp_calculateStringLengt_fu_99_m_axi_str_ARADDR;
    sc_signal< sc_lv<1> > grp_calculateStringLengt_fu_99_m_axi_str_ARID;
    sc_signal< sc_lv<32> > grp_calculateStringLengt_fu_99_m_axi_str_ARLEN;
    sc_signal< sc_lv<3> > grp_calculateStringLengt_fu_99_m_axi_str_ARSIZE;
    sc_signal< sc_lv<2> > grp_calculateStringLengt_fu_99_m_axi_str_ARBURST;
    sc_signal< sc_lv<2> > grp_calculateStringLengt_fu_99_m_axi_str_ARLOCK;
    sc_signal< sc_lv<4> > grp_calculateStringLengt_fu_99_m_axi_str_ARCACHE;
    sc_signal< sc_lv<3> > grp_calculateStringLengt_fu_99_m_axi_str_ARPROT;
    sc_signal< sc_lv<4> > grp_calculateStringLengt_fu_99_m_axi_str_ARQOS;
    sc_signal< sc_lv<4> > grp_calculateStringLengt_fu_99_m_axi_str_ARREGION;
    sc_signal< sc_lv<1> > grp_calculateStringLengt_fu_99_m_axi_str_ARUSER;
    sc_signal< sc_logic > grp_calculateStringLengt_fu_99_m_axi_str_RREADY;
    sc_signal< sc_logic > grp_calculateStringLengt_fu_99_m_axi_str_BREADY;
    sc_signal< sc_logic > grp_sha256_final_fu_68_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > grp_sha256_update_fu_88_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > grp_calculateStringLengt_fu_99_ap_start_reg;
    sc_signal< sc_lv<6> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<6> ap_ST_fsm_state1;
    static const sc_lv<6> ap_ST_fsm_state2;
    static const sc_lv<6> ap_ST_fsm_state3;
    static const sc_lv<6> ap_ST_fsm_state4;
    static const sc_lv<6> ap_ST_fsm_state5;
    static const sc_lv<6> ap_ST_fsm_state6;
    static const sc_lv<32> ap_const_lv32_0;
    static const int C_S_AXI_DATA_WIDTH;
    static const int C_M_AXI_GMEM_USER_VALUE;
    static const int C_M_AXI_GMEM_PROT_VALUE;
    static const int C_M_AXI_GMEM_CACHE_VALUE;
    static const int C_M_AXI_DATA_WIDTH;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const2();
    void thread_ap_var_for_const3();
    void thread_ap_var_for_const4();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_ctx_data_address0();
    void thread_ctx_data_address1();
    void thread_ctx_data_ce0();
    void thread_ctx_data_ce1();
    void thread_ctx_data_d0();
    void thread_ctx_data_we0();
    void thread_ctx_data_we1();
    void thread_gmem_ARADDR();
    void thread_gmem_ARBURST();
    void thread_gmem_ARCACHE();
    void thread_gmem_ARID();
    void thread_gmem_ARLEN();
    void thread_gmem_ARLOCK();
    void thread_gmem_ARPROT();
    void thread_gmem_ARQOS();
    void thread_gmem_ARREGION();
    void thread_gmem_ARSIZE();
    void thread_gmem_ARUSER();
    void thread_gmem_ARVALID();
    void thread_gmem_AWVALID();
    void thread_gmem_BREADY();
    void thread_gmem_RREADY();
    void thread_gmem_WVALID();
    void thread_grp_calculateStringLengt_fu_99_ap_start();
    void thread_grp_sha256_final_fu_68_ap_start();
    void thread_grp_sha256_update_fu_88_ap_start();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
