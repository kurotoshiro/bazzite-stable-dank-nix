#!/bin/bash

set -ouex pipefail

# Nix install
mkdir /nix

# Niri + DMS
dnf5 copr enable avengemedia/dms
dnf5 install -y dms niri quickshell
dnf5 copr disable avengemedia/dms
