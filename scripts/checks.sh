#!/bin/bash
set -e
files=`find . -name "*.cpp" -or -name "*.hpp" -or -name ".h" | grep -v "./tools/*"`
filter=-build/c++11,-runtime/references,-whitespace/braces,-whitespace/indent,-whitespace/comments,-build/include_order
echo $files | xargs cpplint --filter=$filter
export CTEST_OUTPUT_ON_FAILURE=true
./tools/polly/bin/polly --test --reconfig --toolchain sanitize-address-cxx17-pic --config-all Debug --fwd CMAKE_EXE_LINKER="-fuse-ld=gold"
./tools/polly/bin/polly --test --reconfig --toolchain sanitize-thread-cxx17-pic  --config-all Debug --fwd CMAKE_EXE_LINKER="-fuse-ld=gold"
