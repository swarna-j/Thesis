#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/jsk_027/Thesis/machsuite_fft_workspace/solution3/.autopilot/db/a.g.bc ${1+"$@"}