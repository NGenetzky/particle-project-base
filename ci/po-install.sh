#!/bin/bash
sudo apt-get update

sudo apt install -y expect

RAW_GITHUB_PO='https://raw.githubusercontent.com/nrobinson2000/po/175597cc588e0cf8e4193feed9354fb447520766/'
sudo curl -fsSLo /usr/local/share/po-common "${RAW_GITHUB_PO}/share/po-common"
sudo curl -fsSLo /usr/local/share/po-linux "${RAW_GITHUB_PO}/share/po-linux"
sudo curl -fsSLo /usr/local/bin/po "${RAW_GITHUB_PO}/bin/po"
sudo chmod +x /usr/local/bin/po

if [ -f "./ci/po-config.bash" ]; then
  install -m 644 \
    "./ci/po-config.bash" \
    "${HOME}/.po-util/config"
else
  # Default configuration for po
  po config release/v0.6.3 duo false
fi

po install "${HOME}/.po-util/src" basic
