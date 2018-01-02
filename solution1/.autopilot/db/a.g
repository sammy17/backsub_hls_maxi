#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/zynq-fyp/Desktop/maxi_latest/backsub_hls_maxi/solution1/.autopilot/db/a.g.bc ${1+"$@"}
