#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/chathura/HoG_IP/backsub_hls_maxi/solution1/.autopilot/db/a.g.bc ${1+"$@"}
