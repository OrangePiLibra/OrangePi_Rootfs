#!/bin/bash
set -e

# This scripts is used to install and prepare tools

# Install tools
function prepare_tools()
{
    if ! hash apt-get 2>/dev/null; then
        whiptail --title "Orangepi Build System" --msgbox "This scripts requires a Debian based distrbution. If you not use Debian/Ubunut, pls install:[ bsdtar mtools u-boot-tools pv bc sunxi-tools gcc automake make qemu dosfstools ]"
        exit 1
    fi

    apt-get -y --no-install-recommends --fix-missing install \
        qemu-user-static debootstrap
}
prepare_tools
