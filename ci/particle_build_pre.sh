#!/bin/bash

readonly PROJECT_ROOT="$(pwd)"
source "${PROJECT_ROOT}/ci/particle_build_env.sh"

particle_build_pre(){
  cp -T -R \
    "${JOB_INPUT}" \
    "${WORK_INPUT}"
}

# Bash Strict Mode
set -eu -o pipefail

# set -x
particle_build_pre "$@"
