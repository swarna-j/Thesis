set C_TypeInfoList {{ 
"fft" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"real": [[], {"array": [ {"scalar": "double"}, [1024]]}] }, {"img": [[], {"array": [ {"scalar": "double"}, [1024]]}] }, {"real_twid": [[], {"array": [ {"scalar": "double"}, [512]]}] }, {"img_twid": [[], {"array": [ {"scalar": "double"}, [512]]}] }],[],""]
}}
set moduleName fft
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {fft}
set C_modelType { void 0 }
set C_modelArgList {
	{ real_r double 64 regular {array 1024 { 2 } 1 1 }  }
	{ img double 64 regular {array 1024 { 2 } 1 1 }  }
	{ real_twid double 64 regular {array 512 { 1 } 1 1 }  }
	{ img_twid double 64 regular {array 512 { 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "real_r", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "real","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 1023,"step" : 1}]}]}]} , 
 	{ "Name" : "img", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "img","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 1023,"step" : 1}]}]}]} , 
 	{ "Name" : "real_twid", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "real_twid","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 511,"step" : 1}]}]}]} , 
 	{ "Name" : "img_twid", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "img_twid","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 511,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ real_r_address0 sc_out sc_lv 10 signal 0 } 
	{ real_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ real_r_we0 sc_out sc_logic 1 signal 0 } 
	{ real_r_d0 sc_out sc_lv 64 signal 0 } 
	{ real_r_q0 sc_in sc_lv 64 signal 0 } 
	{ img_address0 sc_out sc_lv 10 signal 1 } 
	{ img_ce0 sc_out sc_logic 1 signal 1 } 
	{ img_we0 sc_out sc_logic 1 signal 1 } 
	{ img_d0 sc_out sc_lv 64 signal 1 } 
	{ img_q0 sc_in sc_lv 64 signal 1 } 
	{ real_twid_address0 sc_out sc_lv 9 signal 2 } 
	{ real_twid_ce0 sc_out sc_logic 1 signal 2 } 
	{ real_twid_q0 sc_in sc_lv 64 signal 2 } 
	{ img_twid_address0 sc_out sc_lv 9 signal 3 } 
	{ img_twid_ce0 sc_out sc_logic 1 signal 3 } 
	{ img_twid_q0 sc_in sc_lv 64 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "real_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "real_r", "role": "address0" }} , 
 	{ "name": "real_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_r", "role": "ce0" }} , 
 	{ "name": "real_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_r", "role": "we0" }} , 
 	{ "name": "real_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "real_r", "role": "d0" }} , 
 	{ "name": "real_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "real_r", "role": "q0" }} , 
 	{ "name": "img_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "img", "role": "address0" }} , 
 	{ "name": "img_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img", "role": "ce0" }} , 
 	{ "name": "img_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img", "role": "we0" }} , 
 	{ "name": "img_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "img", "role": "d0" }} , 
 	{ "name": "img_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "img", "role": "q0" }} , 
 	{ "name": "real_twid_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "real_twid", "role": "address0" }} , 
 	{ "name": "real_twid_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_twid", "role": "ce0" }} , 
 	{ "name": "real_twid_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "real_twid", "role": "q0" }} , 
 	{ "name": "img_twid_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "img_twid", "role": "address0" }} , 
 	{ "name": "img_twid_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_twid", "role": "ce0" }} , 
 	{ "name": "img_twid_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "img_twid", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "fft",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "real_r", "Type" : "Memory", "Direction" : "IO"},
		{"Name" : "img", "Type" : "Memory", "Direction" : "IO"},
		{"Name" : "real_twid", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "img_twid", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_dadddsub_64nsbkb_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_dadddsub_64nsbkb_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_dadd_64ns_64ncud_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_dsub_64ns_64ndEe_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_dmul_64ns_64neOg_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_dmul_64ns_64neOg_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_dmul_64ns_64neOg_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_dmul_64ns_64neOg_U8", "Parent" : "0"}]}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "56341", "Max" : "245781"}
	, {"Name" : "Interval", "Min" : "56342", "Max" : "245782"}
]}

set Spec2ImplPortList { 
	real_r { ap_memory {  { real_r_address0 mem_address 1 10 }  { real_r_ce0 mem_ce 1 1 }  { real_r_we0 mem_we 1 1 }  { real_r_d0 mem_din 1 64 }  { real_r_q0 mem_dout 0 64 } } }
	img { ap_memory {  { img_address0 mem_address 1 10 }  { img_ce0 mem_ce 1 1 }  { img_we0 mem_we 1 1 }  { img_d0 mem_din 1 64 }  { img_q0 mem_dout 0 64 } } }
	real_twid { ap_memory {  { real_twid_address0 mem_address 1 9 }  { real_twid_ce0 mem_ce 1 1 }  { real_twid_q0 mem_dout 0 64 } } }
	img_twid { ap_memory {  { img_twid_address0 mem_address 1 9 }  { img_twid_ce0 mem_ce 1 1 }  { img_twid_q0 mem_dout 0 64 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
