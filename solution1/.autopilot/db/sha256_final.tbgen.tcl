set moduleName sha256_final
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {sha256_final}
set C_modelType { void 0 }
set C_modelArgList {
	{ ctx_data int 8 regular {array 64 { 2 2 } 1 1 }  }
	{ ctx_datalen_read int 32 regular  }
	{ ctx_bitlen_read int 64 regular  }
	{ p_read2 int 32 regular  }
	{ p_read3 int 32 regular  }
	{ p_read4 int 32 regular  }
	{ p_read5 int 32 regular  }
	{ p_read6 int 32 regular  }
	{ p_read7 int 32 regular  }
	{ p_read8 int 32 regular  }
	{ p_read9 int 32 regular  }
	{ hash int 8 regular {axi_master 1}  }
	{ hash_offset int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ctx_data", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "ctx_datalen_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ctx_bitlen_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hash", "interface" : "axi_master", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "hash_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 72
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ctx_data_address0 sc_out sc_lv 6 signal 0 } 
	{ ctx_data_ce0 sc_out sc_logic 1 signal 0 } 
	{ ctx_data_we0 sc_out sc_logic 1 signal 0 } 
	{ ctx_data_d0 sc_out sc_lv 8 signal 0 } 
	{ ctx_data_q0 sc_in sc_lv 8 signal 0 } 
	{ ctx_data_address1 sc_out sc_lv 6 signal 0 } 
	{ ctx_data_ce1 sc_out sc_logic 1 signal 0 } 
	{ ctx_data_we1 sc_out sc_logic 1 signal 0 } 
	{ ctx_data_d1 sc_out sc_lv 8 signal 0 } 
	{ ctx_data_q1 sc_in sc_lv 8 signal 0 } 
	{ ctx_datalen_read sc_in sc_lv 32 signal 1 } 
	{ ctx_bitlen_read sc_in sc_lv 64 signal 2 } 
	{ p_read2 sc_in sc_lv 32 signal 3 } 
	{ p_read3 sc_in sc_lv 32 signal 4 } 
	{ p_read4 sc_in sc_lv 32 signal 5 } 
	{ p_read5 sc_in sc_lv 32 signal 6 } 
	{ p_read6 sc_in sc_lv 32 signal 7 } 
	{ p_read7 sc_in sc_lv 32 signal 8 } 
	{ p_read8 sc_in sc_lv 32 signal 9 } 
	{ p_read9 sc_in sc_lv 32 signal 10 } 
	{ m_axi_hash_AWVALID sc_out sc_logic 1 signal 11 } 
	{ m_axi_hash_AWREADY sc_in sc_logic 1 signal 11 } 
	{ m_axi_hash_AWADDR sc_out sc_lv 32 signal 11 } 
	{ m_axi_hash_AWID sc_out sc_lv 1 signal 11 } 
	{ m_axi_hash_AWLEN sc_out sc_lv 32 signal 11 } 
	{ m_axi_hash_AWSIZE sc_out sc_lv 3 signal 11 } 
	{ m_axi_hash_AWBURST sc_out sc_lv 2 signal 11 } 
	{ m_axi_hash_AWLOCK sc_out sc_lv 2 signal 11 } 
	{ m_axi_hash_AWCACHE sc_out sc_lv 4 signal 11 } 
	{ m_axi_hash_AWPROT sc_out sc_lv 3 signal 11 } 
	{ m_axi_hash_AWQOS sc_out sc_lv 4 signal 11 } 
	{ m_axi_hash_AWREGION sc_out sc_lv 4 signal 11 } 
	{ m_axi_hash_AWUSER sc_out sc_lv 1 signal 11 } 
	{ m_axi_hash_WVALID sc_out sc_logic 1 signal 11 } 
	{ m_axi_hash_WREADY sc_in sc_logic 1 signal 11 } 
	{ m_axi_hash_WDATA sc_out sc_lv 8 signal 11 } 
	{ m_axi_hash_WSTRB sc_out sc_lv 1 signal 11 } 
	{ m_axi_hash_WLAST sc_out sc_logic 1 signal 11 } 
	{ m_axi_hash_WID sc_out sc_lv 1 signal 11 } 
	{ m_axi_hash_WUSER sc_out sc_lv 1 signal 11 } 
	{ m_axi_hash_ARVALID sc_out sc_logic 1 signal 11 } 
	{ m_axi_hash_ARREADY sc_in sc_logic 1 signal 11 } 
	{ m_axi_hash_ARADDR sc_out sc_lv 32 signal 11 } 
	{ m_axi_hash_ARID sc_out sc_lv 1 signal 11 } 
	{ m_axi_hash_ARLEN sc_out sc_lv 32 signal 11 } 
	{ m_axi_hash_ARSIZE sc_out sc_lv 3 signal 11 } 
	{ m_axi_hash_ARBURST sc_out sc_lv 2 signal 11 } 
	{ m_axi_hash_ARLOCK sc_out sc_lv 2 signal 11 } 
	{ m_axi_hash_ARCACHE sc_out sc_lv 4 signal 11 } 
	{ m_axi_hash_ARPROT sc_out sc_lv 3 signal 11 } 
	{ m_axi_hash_ARQOS sc_out sc_lv 4 signal 11 } 
	{ m_axi_hash_ARREGION sc_out sc_lv 4 signal 11 } 
	{ m_axi_hash_ARUSER sc_out sc_lv 1 signal 11 } 
	{ m_axi_hash_RVALID sc_in sc_logic 1 signal 11 } 
	{ m_axi_hash_RREADY sc_out sc_logic 1 signal 11 } 
	{ m_axi_hash_RDATA sc_in sc_lv 8 signal 11 } 
	{ m_axi_hash_RLAST sc_in sc_logic 1 signal 11 } 
	{ m_axi_hash_RID sc_in sc_lv 1 signal 11 } 
	{ m_axi_hash_RUSER sc_in sc_lv 1 signal 11 } 
	{ m_axi_hash_RRESP sc_in sc_lv 2 signal 11 } 
	{ m_axi_hash_BVALID sc_in sc_logic 1 signal 11 } 
	{ m_axi_hash_BREADY sc_out sc_logic 1 signal 11 } 
	{ m_axi_hash_BRESP sc_in sc_lv 2 signal 11 } 
	{ m_axi_hash_BID sc_in sc_lv 1 signal 11 } 
	{ m_axi_hash_BUSER sc_in sc_lv 1 signal 11 } 
	{ hash_offset sc_in sc_lv 32 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ctx_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ctx_data", "role": "address0" }} , 
 	{ "name": "ctx_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_data", "role": "ce0" }} , 
 	{ "name": "ctx_data_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_data", "role": "we0" }} , 
 	{ "name": "ctx_data_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_data", "role": "d0" }} , 
 	{ "name": "ctx_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_data", "role": "q0" }} , 
 	{ "name": "ctx_data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ctx_data", "role": "address1" }} , 
 	{ "name": "ctx_data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_data", "role": "ce1" }} , 
 	{ "name": "ctx_data_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_data", "role": "we1" }} , 
 	{ "name": "ctx_data_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_data", "role": "d1" }} , 
 	{ "name": "ctx_data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_data", "role": "q1" }} , 
 	{ "name": "ctx_datalen_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_datalen_read", "role": "default" }} , 
 	{ "name": "ctx_bitlen_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ctx_bitlen_read", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "p_read4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read4", "role": "default" }} , 
 	{ "name": "p_read5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read5", "role": "default" }} , 
 	{ "name": "p_read6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read6", "role": "default" }} , 
 	{ "name": "p_read7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read7", "role": "default" }} , 
 	{ "name": "p_read8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read8", "role": "default" }} , 
 	{ "name": "p_read9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read9", "role": "default" }} , 
 	{ "name": "m_axi_hash_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "AWVALID" }} , 
 	{ "name": "m_axi_hash_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "AWREADY" }} , 
 	{ "name": "m_axi_hash_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hash", "role": "AWADDR" }} , 
 	{ "name": "m_axi_hash_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "AWID" }} , 
 	{ "name": "m_axi_hash_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hash", "role": "AWLEN" }} , 
 	{ "name": "m_axi_hash_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "hash", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_hash_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hash", "role": "AWBURST" }} , 
 	{ "name": "m_axi_hash_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hash", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_hash_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hash", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_hash_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "hash", "role": "AWPROT" }} , 
 	{ "name": "m_axi_hash_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hash", "role": "AWQOS" }} , 
 	{ "name": "m_axi_hash_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hash", "role": "AWREGION" }} , 
 	{ "name": "m_axi_hash_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "AWUSER" }} , 
 	{ "name": "m_axi_hash_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "WVALID" }} , 
 	{ "name": "m_axi_hash_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "WREADY" }} , 
 	{ "name": "m_axi_hash_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hash", "role": "WDATA" }} , 
 	{ "name": "m_axi_hash_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "WSTRB" }} , 
 	{ "name": "m_axi_hash_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "WLAST" }} , 
 	{ "name": "m_axi_hash_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "WID" }} , 
 	{ "name": "m_axi_hash_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "WUSER" }} , 
 	{ "name": "m_axi_hash_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "ARVALID" }} , 
 	{ "name": "m_axi_hash_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "ARREADY" }} , 
 	{ "name": "m_axi_hash_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hash", "role": "ARADDR" }} , 
 	{ "name": "m_axi_hash_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "ARID" }} , 
 	{ "name": "m_axi_hash_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hash", "role": "ARLEN" }} , 
 	{ "name": "m_axi_hash_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "hash", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_hash_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hash", "role": "ARBURST" }} , 
 	{ "name": "m_axi_hash_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hash", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_hash_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hash", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_hash_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "hash", "role": "ARPROT" }} , 
 	{ "name": "m_axi_hash_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hash", "role": "ARQOS" }} , 
 	{ "name": "m_axi_hash_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hash", "role": "ARREGION" }} , 
 	{ "name": "m_axi_hash_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "ARUSER" }} , 
 	{ "name": "m_axi_hash_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "RVALID" }} , 
 	{ "name": "m_axi_hash_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "RREADY" }} , 
 	{ "name": "m_axi_hash_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hash", "role": "RDATA" }} , 
 	{ "name": "m_axi_hash_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "RLAST" }} , 
 	{ "name": "m_axi_hash_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "RID" }} , 
 	{ "name": "m_axi_hash_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "RUSER" }} , 
 	{ "name": "m_axi_hash_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hash", "role": "RRESP" }} , 
 	{ "name": "m_axi_hash_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "BVALID" }} , 
 	{ "name": "m_axi_hash_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "BREADY" }} , 
 	{ "name": "m_axi_hash_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hash", "role": "BRESP" }} , 
 	{ "name": "m_axi_hash_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "BID" }} , 
 	{ "name": "m_axi_hash_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "BUSER" }} , 
 	{ "name": "hash_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hash_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "sha256_final",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_575"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_575"}],
		"Port" : [
			{"Name" : "ctx_data", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sha256_transform_fu_575", "Port" : "data"}]},
			{"Name" : "ctx_datalen_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctx_bitlen_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "hash", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "hash_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "hash_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "hash_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "hash_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sha256_transform_fu_575", "Port" : "k"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_575", "Parent" : "0", "Child" : ["2", "3"],
		"CDFG" : "sha256_transform",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "435", "EstimateLatencyMax" : "435",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ctx_state_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctx_state_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctx_state_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctx_state_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctx_state_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctx_state_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctx_state_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctx_state_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_575.k_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_575.m_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	sha256_final {
		ctx_data {Type IO LastRead 3 FirstWrite -1}
		ctx_datalen_read {Type I LastRead 0 FirstWrite -1}
		ctx_bitlen_read {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		hash {Type O LastRead 19 FirstWrite 11}
		hash_offset {Type I LastRead 0 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}
	sha256_transform {
		ctx_state_0_read {Type I LastRead 0 FirstWrite -1}
		ctx_state_1_read {Type I LastRead 0 FirstWrite -1}
		ctx_state_2_read {Type I LastRead 0 FirstWrite -1}
		ctx_state_3_read {Type I LastRead 0 FirstWrite -1}
		ctx_state_4_read {Type I LastRead 0 FirstWrite -1}
		ctx_state_5_read {Type I LastRead 0 FirstWrite -1}
		ctx_state_6_read {Type I LastRead 0 FirstWrite -1}
		ctx_state_7_read {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 3 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	ctx_data { ap_memory {  { ctx_data_address0 mem_address 1 6 }  { ctx_data_ce0 mem_ce 1 1 }  { ctx_data_we0 mem_we 1 1 }  { ctx_data_d0 mem_din 1 8 }  { ctx_data_q0 mem_dout 0 8 }  { ctx_data_address1 MemPortADDR2 1 6 }  { ctx_data_ce1 MemPortCE2 1 1 }  { ctx_data_we1 MemPortWE2 1 1 }  { ctx_data_d1 MemPortDIN2 1 8 }  { ctx_data_q1 MemPortDOUT2 0 8 } } }
	ctx_datalen_read { ap_none {  { ctx_datalen_read in_data 0 32 } } }
	ctx_bitlen_read { ap_none {  { ctx_bitlen_read in_data 0 64 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 32 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 32 } } }
	p_read4 { ap_none {  { p_read4 in_data 0 32 } } }
	p_read5 { ap_none {  { p_read5 in_data 0 32 } } }
	p_read6 { ap_none {  { p_read6 in_data 0 32 } } }
	p_read7 { ap_none {  { p_read7 in_data 0 32 } } }
	p_read8 { ap_none {  { p_read8 in_data 0 32 } } }
	p_read9 { ap_none {  { p_read9 in_data 0 32 } } }
	hash { m_axi {  { m_axi_hash_AWVALID VALID 1 1 }  { m_axi_hash_AWREADY READY 0 1 }  { m_axi_hash_AWADDR ADDR 1 32 }  { m_axi_hash_AWID ID 1 1 }  { m_axi_hash_AWLEN LEN 1 32 }  { m_axi_hash_AWSIZE SIZE 1 3 }  { m_axi_hash_AWBURST BURST 1 2 }  { m_axi_hash_AWLOCK LOCK 1 2 }  { m_axi_hash_AWCACHE CACHE 1 4 }  { m_axi_hash_AWPROT PROT 1 3 }  { m_axi_hash_AWQOS QOS 1 4 }  { m_axi_hash_AWREGION REGION 1 4 }  { m_axi_hash_AWUSER USER 1 1 }  { m_axi_hash_WVALID VALID 1 1 }  { m_axi_hash_WREADY READY 0 1 }  { m_axi_hash_WDATA DATA 1 8 }  { m_axi_hash_WSTRB STRB 1 1 }  { m_axi_hash_WLAST LAST 1 1 }  { m_axi_hash_WID ID 1 1 }  { m_axi_hash_WUSER USER 1 1 }  { m_axi_hash_ARVALID VALID 1 1 }  { m_axi_hash_ARREADY READY 0 1 }  { m_axi_hash_ARADDR ADDR 1 32 }  { m_axi_hash_ARID ID 1 1 }  { m_axi_hash_ARLEN LEN 1 32 }  { m_axi_hash_ARSIZE SIZE 1 3 }  { m_axi_hash_ARBURST BURST 1 2 }  { m_axi_hash_ARLOCK LOCK 1 2 }  { m_axi_hash_ARCACHE CACHE 1 4 }  { m_axi_hash_ARPROT PROT 1 3 }  { m_axi_hash_ARQOS QOS 1 4 }  { m_axi_hash_ARREGION REGION 1 4 }  { m_axi_hash_ARUSER USER 1 1 }  { m_axi_hash_RVALID VALID 0 1 }  { m_axi_hash_RREADY READY 1 1 }  { m_axi_hash_RDATA DATA 0 8 }  { m_axi_hash_RLAST LAST 0 1 }  { m_axi_hash_RID ID 0 1 }  { m_axi_hash_RUSER USER 0 1 }  { m_axi_hash_RRESP RESP 0 2 }  { m_axi_hash_BVALID VALID 0 1 }  { m_axi_hash_BREADY READY 1 1 }  { m_axi_hash_BRESP RESP 0 2 }  { m_axi_hash_BID ID 0 1 }  { m_axi_hash_BUSER USER 0 1 } } }
	hash_offset { ap_none {  { hash_offset in_data 0 32 } } }
}
