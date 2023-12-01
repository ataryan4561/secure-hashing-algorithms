// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xmain_fn.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMain_fn_CfgInitialize(XMain_fn *InstancePtr, XMain_fn_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axilites_BaseAddress = ConfigPtr->Axilites_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMain_fn_Start(XMain_fn *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_fn_ReadReg(InstancePtr->Axilites_BaseAddress, XMAIN_FN_AXILITES_ADDR_AP_CTRL) & 0x80;
    XMain_fn_WriteReg(InstancePtr->Axilites_BaseAddress, XMAIN_FN_AXILITES_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMain_fn_IsDone(XMain_fn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_fn_ReadReg(InstancePtr->Axilites_BaseAddress, XMAIN_FN_AXILITES_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMain_fn_IsIdle(XMain_fn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_fn_ReadReg(InstancePtr->Axilites_BaseAddress, XMAIN_FN_AXILITES_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMain_fn_IsReady(XMain_fn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_fn_ReadReg(InstancePtr->Axilites_BaseAddress, XMAIN_FN_AXILITES_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMain_fn_EnableAutoRestart(XMain_fn *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_fn_WriteReg(InstancePtr->Axilites_BaseAddress, XMAIN_FN_AXILITES_ADDR_AP_CTRL, 0x80);
}

void XMain_fn_DisableAutoRestart(XMain_fn *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_fn_WriteReg(InstancePtr->Axilites_BaseAddress, XMAIN_FN_AXILITES_ADDR_AP_CTRL, 0);
}

void XMain_fn_Set_input_r(XMain_fn *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_fn_WriteReg(InstancePtr->Axilites_BaseAddress, XMAIN_FN_AXILITES_ADDR_INPUT_R_DATA, Data);
}

u32 XMain_fn_Get_input_r(XMain_fn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_fn_ReadReg(InstancePtr->Axilites_BaseAddress, XMAIN_FN_AXILITES_ADDR_INPUT_R_DATA);
    return Data;
}

void XMain_fn_Set_output_r(XMain_fn *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_fn_WriteReg(InstancePtr->Axilites_BaseAddress, XMAIN_FN_AXILITES_ADDR_OUTPUT_R_DATA, Data);
}

u32 XMain_fn_Get_output_r(XMain_fn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_fn_ReadReg(InstancePtr->Axilites_BaseAddress, XMAIN_FN_AXILITES_ADDR_OUTPUT_R_DATA);
    return Data;
}

void XMain_fn_InterruptGlobalEnable(XMain_fn *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_fn_WriteReg(InstancePtr->Axilites_BaseAddress, XMAIN_FN_AXILITES_ADDR_GIE, 1);
}

void XMain_fn_InterruptGlobalDisable(XMain_fn *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_fn_WriteReg(InstancePtr->Axilites_BaseAddress, XMAIN_FN_AXILITES_ADDR_GIE, 0);
}

void XMain_fn_InterruptEnable(XMain_fn *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMain_fn_ReadReg(InstancePtr->Axilites_BaseAddress, XMAIN_FN_AXILITES_ADDR_IER);
    XMain_fn_WriteReg(InstancePtr->Axilites_BaseAddress, XMAIN_FN_AXILITES_ADDR_IER, Register | Mask);
}

void XMain_fn_InterruptDisable(XMain_fn *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMain_fn_ReadReg(InstancePtr->Axilites_BaseAddress, XMAIN_FN_AXILITES_ADDR_IER);
    XMain_fn_WriteReg(InstancePtr->Axilites_BaseAddress, XMAIN_FN_AXILITES_ADDR_IER, Register & (~Mask));
}

void XMain_fn_InterruptClear(XMain_fn *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_fn_WriteReg(InstancePtr->Axilites_BaseAddress, XMAIN_FN_AXILITES_ADDR_ISR, Mask);
}

u32 XMain_fn_InterruptGetEnabled(XMain_fn *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMain_fn_ReadReg(InstancePtr->Axilites_BaseAddress, XMAIN_FN_AXILITES_ADDR_IER);
}

u32 XMain_fn_InterruptGetStatus(XMain_fn *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMain_fn_ReadReg(InstancePtr->Axilites_BaseAddress, XMAIN_FN_AXILITES_ADDR_ISR);
}

