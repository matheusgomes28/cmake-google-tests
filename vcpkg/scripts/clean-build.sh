#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(dirname "$(realpath "$0")")"
PROJECT_DIR="$(dirname "${SCRIPT_DIR}")"
BUILD_DIR="${PROJECT_DIR}/build"
echo "!!!!! SCRIPT_DIR: ${SCRIPT_DIR}"
echo "!!!!! PEOJECT_DIR: ${PROJECT_DIR}"
echo "!!!!! BUILD_DIR: ${BUILD_DIR}"

rm -rf "${BUILD_DIR}"


