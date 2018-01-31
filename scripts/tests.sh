#!/bin/bash
export CTEST_OUTPUT_ON_FAILURE=true
./tools/polly/bin/polly --reconfig --toolchain gcc-7-cxx17 --test --config-all Debug --fwd CMAKE_EXE_LINKER="-fuse-ld=gold"
./tools/polly/bin/polly --reconfig --toolchain gcc-7-cxx17 --target gcov --config-all Debug --fwd CMAKE_EXE_LINKER="-fuse-ld=gold"
./tools/polly/bin/polly --reconfig --toolchain gcc-7-cxx17 --target lcov --config-all Debug --fwd CMAKE_EXE_LINKER="-fuse-ld=gold"
gcovr -r  .
