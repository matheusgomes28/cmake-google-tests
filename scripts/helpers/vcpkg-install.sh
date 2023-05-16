#!/usr/bin/env bash

set -euo pipefail

: ' This file will install vcpkg and export the VCPKG_ROOT
    variable to the environment.
'


apt-get update -y
apt-get install zip -y

git clone https://github.com/Microsoft/vcpkg.git

./vcpkg/bootstrap-vcpkg.sh

VCPKG_ROOT="$(realpath "vcpkg/")"
export VCPKG_ROOT

PATH="${PATH}:${VCPKG_ROOT}"
export PATH
