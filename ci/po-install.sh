#!/bin/bash

SRCREV_po="26d1080e79c758839872fe83170b0cf363c5f34f"
RAW_GITHUB_PO="https://raw.githubusercontent.com/nrobinson2000/po/${SRCREV_po}/"
APT_PACKAGES='
  expect
  sudo
'

if command -v 'sudo' > '/dev/null' 2>&1 ; then
  sudo apt-get update
  sudo apt install -y ${APT_PACKAGES}
else
  apt-get update
  apt install -y ${APT_PACKAGES}
fi

sudo curl -fsSLo '/usr/local/share/po-common' "${RAW_GITHUB_PO}/share/po-common"
sudo curl -fsSLo '/usr/local/share/po-linux' "${RAW_GITHUB_PO}/share/po-linux"
sudo curl -fsSLo '/usr/local/share/po-docker' "${RAW_GITHUB_PO}/share/po-docker"
sudo curl -fsSLo '/usr/local/bin/po' "${RAW_GITHUB_PO}/bin/po"
sudo chmod +x '/usr/local/bin/po'

if [ -f "./ci/po-config.bash" ]; then
  install -m 644 \
    "./ci/po-config.bash" \
    "${HOME}/.po-util/config"
else
  # Default configuration for po
  po config release/v0.6.3 duo false
fi

po install "${HOME}/.po-util/src" basic
