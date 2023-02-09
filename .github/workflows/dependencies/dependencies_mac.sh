#!/usr/bin/env bash
#
# Copyright 2020 The AMReX Community
#
# License: BSD-3-Clause-LBNL
# Authors: Axel Huebl

set -eu -o pipefail

wget https://raw.githubusercontent.com/Homebrew/homebrew-core/777f4d4ebb00ca2b38b00ef32ee7f30704b61f35/Formula/cmake.rb
brew update
brew unlink cmake
brew reinstall gcc || true
brew install libomp || true
brew install open-mpi || true
brew install ccache || true
brew install -s ./cmake.rb || true
