#!/bin/bash

SRCREV_po="26d1080e79c758839872fe83170b0cf363c5f34f"

apt-get update \
    && apt-get install -y \
    expect \
    sudo

sudo curl -fsSLo '/usr/local/share/po-common' \
    "https://raw.githubusercontent.com/nrobinson2000/po/${SRCREV_po}/share/po-common"
sudo curl -fsSLo '/usr/local/share/po-linux' \
    "https://raw.githubusercontent.com/nrobinson2000/po/${SRCREV_po}/share/po-linux"
sudo curl -fsSLo '/usr/local/share/po-docker' \
    "https://raw.githubusercontent.com/nrobinson2000/po/${SRCREV_po}/share/po-docker"
sudo curl -fsSLo '/usr/local/bin/po' \
    "https://raw.githubusercontent.com/nrobinson2000/po/${SRCREV_po}/bin/po"

sudo chmod +x '/usr/local/bin/po'

po config 'release/v0.6.3' duo false

po install "${HOME}/.po-util/src" basic