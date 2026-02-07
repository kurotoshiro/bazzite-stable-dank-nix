#!/bin/bash

set -ouex pipefail

# Nix install
mkdir /nix

# Niri + DMS
dnf5 -y copr enable avengemedia/dms
dnf5 -y copr enable yalter/niri
dnf5 -y copr enable errornointernet/quickshell

dnf5 -y install dms niri quickshell

dnf5 -y copr disable avengemedia/dms
dnf5 -y copr disable yalter/niri
dnf5 -y copr disable errornointernet/quickshell
