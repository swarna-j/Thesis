############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_resource -core RAM_1P_BRAM "fft" real
set_directive_resource -core RAM_1P_BRAM "fft" img
set_directive_resource -core RAM_1P_BRAM "fft" real_twid
set_directive_resource -core ROM_1P_BRAM "fft" img_twid
set_directive_loop_tripcount -max 10 "fft/outer"
set_directive_loop_tripcount -min 512 -max 1024 "fft/inner"
