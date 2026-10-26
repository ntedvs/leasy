#!/usr/bin/env bash
set -euxo pipefail

cp -a /ctx/system_files/. /
rm -f /.gitkeep

# dnf5 install -y <pkg>
# systemctl enable <unit>
