#!/bin/bash

readonly PROJECT_ROOT="$(pwd)"
source "${PROJECT_ROOT}/ci/particle_build_env.sh"

particle_build_run(){
  /bin/run
}

# Bash Strict Mode
set -eu -o pipefail

# set -x
particle_build_run "$@"
