// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xmain_fn.h"

extern XMain_fn_Config XMain_fn_ConfigTable[];

XMain_fn_Config *XMain_fn_LookupConfig(u16 DeviceId) {
	XMain_fn_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMAIN_FN_NUM_INSTANCES; Index++) {
		if (XMain_fn_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMain_fn_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMain_fn_Initialize(XMain_fn *InstancePtr, u16 DeviceId) {
	XMain_fn_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMain_fn_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMain_fn_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

