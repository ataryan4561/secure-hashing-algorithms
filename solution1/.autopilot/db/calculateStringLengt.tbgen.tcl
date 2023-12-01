set moduleName calculateStringLengt
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
set C_modelName {calculateStringLengt}
set C_modelType { int 64 }
set C_modelArgList {
	{ str int 8 regular {axi_master 0}  }
	{ str_offset int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "str", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "str_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 64} ]}
# RTL Port declarations: 
set portNum 53
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_str_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_str_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_str_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_str_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_str_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_str_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_str_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_str_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_str_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_str_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_str_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_str_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_str_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_str_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_str_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_str_WDATA sc_out sc_lv 8 signal 0 } 
	{ m_axi_str_WSTRB sc_out sc_lv 1 signal 0 } 
	{ m_axi_str_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_str_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_str_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_str_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_str_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_str_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_str_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_str_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_str_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_str_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_str_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_str_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_str_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_str_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_str_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_str_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_str_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_str_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_str_RDATA sc_in sc_lv 8 signal 0 } 
	{ m_axi_str_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_str_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_str_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_str_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_str_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_str_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_str_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_str_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_str_BUSER sc_in sc_lv 1 signal 0 } 
	{ str_offset sc_in sc_lv 32 signal 1 } 
	{ ap_return sc_out sc_lv 64 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_str_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "str", "role": "AWVALID" }} , 
 	{ "name": "m_axi_str_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "str", "role": "AWREADY" }} , 
 	{ "name": "m_axi_str_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "str", "role": "AWADDR" }} , 
 	{ "name": "m_axi_str_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "str", "role": "AWID" }} , 
 	{ "name": "m_axi_str_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "str", "role": "AWLEN" }} , 
 	{ "name": "m_axi_str_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "str", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_str_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "str", "role": "AWBURST" }} , 
 	{ "name": "m_axi_str_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "str", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_str_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "str", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_str_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "str", "role": "AWPROT" }} , 
 	{ "name": "m_axi_str_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "str", "role": "AWQOS" }} , 
 	{ "name": "m_axi_str_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "str", "role": "AWREGION" }} , 
 	{ "name": "m_axi_str_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "str", "role": "AWUSER" }} , 
 	{ "name": "m_axi_str_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "str", "role": "WVALID" }} , 
 	{ "name": "m_axi_str_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "str", "role": "WREADY" }} , 
 	{ "name": "m_axi_str_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "str", "role": "WDATA" }} , 
 	{ "name": "m_axi_str_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "str", "role": "WSTRB" }} , 
 	{ "name": "m_axi_str_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "str", "role": "WLAST" }} , 
 	{ "name": "m_axi_str_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "str", "role": "WID" }} , 
 	{ "name": "m_axi_str_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "str", "role": "WUSER" }} , 
 	{ "name": "m_axi_str_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "str", "role": "ARVALID" }} , 
 	{ "name": "m_axi_str_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "str", "role": "ARREADY" }} , 
 	{ "name": "m_axi_str_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "str", "role": "ARADDR" }} , 
 	{ "name": "m_axi_str_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "str", "role": "ARID" }} , 
 	{ "name": "m_axi_str_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "str", "role": "ARLEN" }} , 
 	{ "name": "m_axi_str_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "str", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_str_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "str", "role": "ARBURST" }} , 
 	{ "name": "m_axi_str_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "str", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_str_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "str", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_str_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "str", "role": "ARPROT" }} , 
 	{ "name": "m_axi_str_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "str", "role": "ARQOS" }} , 
 	{ "name": "m_axi_str_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "str", "role": "ARREGION" }} , 
 	{ "name": "m_axi_str_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "str", "role": "ARUSER" }} , 
 	{ "name": "m_axi_str_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "str", "role": "RVALID" }} , 
 	{ "name": "m_axi_str_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "str", "role": "RREADY" }} , 
 	{ "name": "m_axi_str_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "str", "role": "RDATA" }} , 
 	{ "name": "m_axi_str_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "str", "role": "RLAST" }} , 
 	{ "name": "m_axi_str_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "str", "role": "RID" }} , 
 	{ "name": "m_axi_str_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "str", "role": "RUSER" }} , 
 	{ "name": "m_axi_str_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "str", "role": "RRESP" }} , 
 	{ "name": "m_axi_str_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "str", "role": "BVALID" }} , 
 	{ "name": "m_axi_str_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "str", "role": "BREADY" }} , 
 	{ "name": "m_axi_str_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "str", "role": "BRESP" }} , 
 	{ "name": "m_axi_str_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "str", "role": "BID" }} , 
 	{ "name": "m_axi_str_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "str", "role": "BUSER" }} , 
 	{ "name": "str_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "str_offset", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "calculateStringLengt",
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
		"Port" : [
			{"Name" : "str", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "str_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "str_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "str_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	calculateStringLengt {
		str {Type I LastRead 9 FirstWrite -1}
		str_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	str { m_axi {  { m_axi_str_AWVALID VALID 1 1 }  { m_axi_str_AWREADY READY 0 1 }  { m_axi_str_AWADDR ADDR 1 32 }  { m_axi_str_AWID ID 1 1 }  { m_axi_str_AWLEN LEN 1 32 }  { m_axi_str_AWSIZE SIZE 1 3 }  { m_axi_str_AWBURST BURST 1 2 }  { m_axi_str_AWLOCK LOCK 1 2 }  { m_axi_str_AWCACHE CACHE 1 4 }  { m_axi_str_AWPROT PROT 1 3 }  { m_axi_str_AWQOS QOS 1 4 }  { m_axi_str_AWREGION REGION 1 4 }  { m_axi_str_AWUSER USER 1 1 }  { m_axi_str_WVALID VALID 1 1 }  { m_axi_str_WREADY READY 0 1 }  { m_axi_str_WDATA DATA 1 8 }  { m_axi_str_WSTRB STRB 1 1 }  { m_axi_str_WLAST LAST 1 1 }  { m_axi_str_WID ID 1 1 }  { m_axi_str_WUSER USER 1 1 }  { m_axi_str_ARVALID VALID 1 1 }  { m_axi_str_ARREADY READY 0 1 }  { m_axi_str_ARADDR ADDR 1 32 }  { m_axi_str_ARID ID 1 1 }  { m_axi_str_ARLEN LEN 1 32 }  { m_axi_str_ARSIZE SIZE 1 3 }  { m_axi_str_ARBURST BURST 1 2 }  { m_axi_str_ARLOCK LOCK 1 2 }  { m_axi_str_ARCACHE CACHE 1 4 }  { m_axi_str_ARPROT PROT 1 3 }  { m_axi_str_ARQOS QOS 1 4 }  { m_axi_str_ARREGION REGION 1 4 }  { m_axi_str_ARUSER USER 1 1 }  { m_axi_str_RVALID VALID 0 1 }  { m_axi_str_RREADY READY 1 1 }  { m_axi_str_RDATA DATA 0 8 }  { m_axi_str_RLAST LAST 0 1 }  { m_axi_str_RID ID 0 1 }  { m_axi_str_RUSER USER 0 1 }  { m_axi_str_RRESP RESP 0 2 }  { m_axi_str_BVALID VALID 0 1 }  { m_axi_str_BREADY READY 1 1 }  { m_axi_str_BRESP RESP 0 2 }  { m_axi_str_BID ID 0 1 }  { m_axi_str_BUSER USER 0 1 } } }
	str_offset { ap_none {  { str_offset in_data 0 32 } } }
}
