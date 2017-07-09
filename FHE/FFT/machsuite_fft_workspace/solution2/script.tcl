############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project machsuite_fft_workspace
set_top fft
add_files MachSuite/fft/strided/fft.c
add_files MachSuite/fft/strided/fft.h
add_files -tb MachSuite/fft/strided/fft_test.c
open_solution "solution2"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
set_clock_uncertainty 0
source "./machsuite_fft_workspace/solution2/directives.tcl"
csim_design -compiler gcc
csynth_design
cosim_design
export_design -flow impl -rtl verilog -format ip_catalog
