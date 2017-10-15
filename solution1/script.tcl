############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project backsub_hls_maxi
set_top backsub
add_files backsub_hls_maxi/core.cpp
add_files backsub_hls_maxi/core.h
add_files -tb backsub_hls_maxi/cut.avi
add_files -tb backsub_hls_maxi/test.cpp
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
#source "./backsub_hls_maxi/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -setup
export_design -format ip_catalog
