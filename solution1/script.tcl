############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project sha256
set_top main_fn
add_files sha256/header.h
add_files sha256/main.c
open_solution "solution1"
set_part {xc7z020-clg484-1} -tool vivado
create_clock -period 10 -name default
set_clock_uncertainty 1.25
#source "./sha256/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
