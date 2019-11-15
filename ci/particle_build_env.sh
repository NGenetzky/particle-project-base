#!/bin/bash
# File should be sourced, not executed.

# These variables specify the input/output of the job.
readonly JOB_INPUT="${PROJECT_ROOT?}/${PARTICLE_BUILD_IN?}"
readonly JOB_OUTPUT="${PROJECT_ROOT?}/${PARTICLE_BUILD_OUT?}"

# These variables define the interaction with:
# particle-iot/firmware-buildpack-builder
#
# /input - should contain all project files
# /output - after build will contain logs and build artifacts
# /cache - temp directory to store intermediate files
# /log - directory containing run logs
# /ssh - directory containing SSH keys (will be copied to ~/.ssh)
readonly WORK_INPUT='/input/'
readonly WORK_OUTPUT='/output/'
readonly WORK_CACHE='/cache/'
readonly WORK_LOG='/log/'
readonly WORK_SSH='/ssh/'
