#!/bin/bash -x

PASS=0
FAIL=1

gitlab_test(){
    local has_bin="$PASS"
    [ -f bin/*.bin ] || has_bin="$FAIL"
    return "$has_bin"
}

gitlab_test
