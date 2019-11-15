#!/bin/bash

readonly PROJECT_ROOT="$(pwd)"
source "${PROJECT_ROOT}/ci/particle_build_env.sh"

particle_build_deploy(){
  cp -T -R \
    "${WORK_OUTPUT}" \
    "${JOB_OUTPUT}"
  cp -T -R \
    "${WORK_LOG}" \
    "${JOB_OUTPUT}"
}

# Bash Strict Mode
set -eu -o pipefail

# set -x
particle_build_deploy "$@"
