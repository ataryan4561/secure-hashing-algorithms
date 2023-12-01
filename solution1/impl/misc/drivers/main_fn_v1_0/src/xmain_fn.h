// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XMAIN_FN_H
#define XMAIN_FN_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xmain_fn_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Axilites_BaseAddress;
} XMain_fn_Config;
#endif

typedef struct {
    u32 Axilites_BaseAddress;
    u32 IsReady;
} XMain_fn;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMain_fn_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMain_fn_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMain_fn_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMain_fn_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XMain_fn_Initialize(XMain_fn *InstancePtr, u16 DeviceId);
XMain_fn_Config* XMain_fn_LookupConfig(u16 DeviceId);
int XMain_fn_CfgInitialize(XMain_fn *InstancePtr, XMain_fn_Config *ConfigPtr);
#else
int XMain_fn_Initialize(XMain_fn *InstancePtr, const char* InstanceName);
int XMain_fn_Release(XMain_fn *InstancePtr);
#endif

void XMain_fn_Start(XMain_fn *InstancePtr);
u32 XMain_fn_IsDone(XMain_fn *InstancePtr);
u32 XMain_fn_IsIdle(XMain_fn *InstancePtr);
u32 XMain_fn_IsReady(XMain_fn *InstancePtr);
void XMain_fn_EnableAutoRestart(XMain_fn *InstancePtr);
void XMain_fn_DisableAutoRestart(XMain_fn *InstancePtr);

void XMain_fn_Set_input_r(XMain_fn *InstancePtr, u32 Data);
u32 XMain_fn_Get_input_r(XMain_fn *InstancePtr);
void XMain_fn_Set_output_r(XMain_fn *InstancePtr, u32 Data);
u32 XMain_fn_Get_output_r(XMain_fn *InstancePtr);

void XMain_fn_InterruptGlobalEnable(XMain_fn *InstancePtr);
void XMain_fn_InterruptGlobalDisable(XMain_fn *InstancePtr);
void XMain_fn_InterruptEnable(XMain_fn *InstancePtr, u32 Mask);
void XMain_fn_InterruptDisable(XMain_fn *InstancePtr, u32 Mask);
void XMain_fn_InterruptClear(XMain_fn *InstancePtr, u32 Mask);
u32 XMain_fn_InterruptGetEnabled(XMain_fn *InstancePtr);
u32 XMain_fn_InterruptGetStatus(XMain_fn *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
