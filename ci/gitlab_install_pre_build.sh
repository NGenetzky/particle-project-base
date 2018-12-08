#!/bin/bash
apt-get update \
    && apt-get install -y \
    sudo
/bin/bash -x <(curl -sL https://raw.githubusercontent.com/nrobinson2000/po/master/ci/ci-install)