#!/bin/bash
set -e

#
# This scripts is uesed to build basic Ubuntu/Debian rootfs
# Maintainer: Buddy <buddy.zhang@aliyun.com>
#

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

