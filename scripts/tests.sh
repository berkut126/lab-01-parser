#!/bin/bash
set -e
export CTEST_OUTPUT_ON_FAILURE=true
./tools/polly/bin/polly --reconfig --toolchain gcc-7-cxx17-pic --test --config-all Debug --fwd CMAKE_EXE_LINKER="-fuse-ld=gold" BUILD_COVERAGE=ON
./tools/polly/bin/polly --reconfig --toolchain gcc-7-cxx17-pic --target gcov --config-all Debug --fwd CMAKE_EXE_LINKER="-fuse-ld=gold" BUILD_COVERAGE=ON
./tools/polly/bin/polly --reconfig --toolchain gcc-7-cxx17-pic --target lcov --config-all Debug --fwd CMAKE_EXE_LINKER="-fuse-ld=gold" BUILD_COVERAGE=ON
gcovr -r  .

REPORT_DATA=$(gcovr -r  . | base64 | tr -d '\n')
POST_DATA="{\"report\": \"$REPORT_DATA\", \"slug\": \"$TRAVIS_REPO_SLUG\", \"head_branch\": \"$TRAVIS_BRANCH\", \"head_sha\": \"$TRAVIS_COMMIT\"}"
if [[ $TRAVIS_PULL_REQUEST == 'false' ]]; then
curl -H "Content-Type: application/json" -d "$POST_DATA" -X POST http://borodin.dev.bmstu.cloud/api/coverage/
fi
