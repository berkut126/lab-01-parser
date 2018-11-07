#!/bin/bash
files=`find . -name "*.cpp" -or -name "*.hpp" -or -name ".h" | grep -v "./tools/*"`
filter=-build/c++11,-runtime/references,-whitespace/braces,-whitespace/indent,-whitespace/comments,-build/include_order
echo $files | xargs cpplint --filter=$filter
./tools/polly/bin/polly --reconfig --toolchain sanitize-address-cxx17-pic --config-all Debug --fwd CMAKE_EXE_LINKER="-fuse-ld=gold"
./tools/polly/bin/polly --reconfig --toolchain sanitize-thread-cxx17-pic  --config-all Debug --fwd CMAKE_EXE_LINKER="-fuse-ld=gold"
