#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(dirname "$(realpath "$0")")"
PROJECT_DIR="$(dirname "${SCRIPT_DIR}")"
BUILD_DIR="${PROJECT_DIR}/build"
echo "SCRIPT_DIR: ${SCRIPT_DIR}"
echo "PROJECT_DIR: ${PROJECT_DIR}"
echo "BUILD_DIR: ${BUILD_DIR}"

mkdir -p "${BUILD_DIR}"

conan install "${PROJECT_DIR}" \
    -if "${BUILD_DIR}" \
    --build=missing

cmake -S "${PROJECT_DIR}" \
  -B "${BUILD_DIR}" \
  -DCMAKE_MODULE_PATH="${BUILD_DIR}" \
  -DCMAKE_EXPORT_COMPILE_COMMANDS=ON

cmake --build "${BUILD_DIR}" -j4
cp -p "${BUILD_DIR}/compile_commands.json" "${PROJECT_DIR}"

# Run the tests
cd build
GTEST_COLOR=1 ctest --verbose

echo "Build Finished"
