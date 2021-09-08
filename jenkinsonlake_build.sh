#!/bin/bash

SCRIPT_DIR="$( cd "$(dirname "${BASH_SOURCE[0]:-$0}")" >/dev/null 2>&1 ; pwd -P )"
. "${SCRIPT_DIR}/jenkinsonlake_env.sh" 

cd ${MIPS_APP}/build
#cmake .. -G "Unix Makefiles"
cmake .. -G "Unix Makefiles" -DBUILD_TEST=ON
#make -j$(nproc) VERBOSE=1
make -j$(nproc)
