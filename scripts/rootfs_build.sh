#!/bin/bash
set -e

#
# This scripts is uesed to build basic Ubuntu/Debian rootfs
# Maintainer: Buddy <buddy.zhang@aliyun.com>
#

# Input Golbal argument
. ROOTFS_Configure.sh

function debootOS()
{
    if [ "${raspbian}" = "yes" ] ; then
        debootstrap --arch armhf --foreign --no-check-gpg --include=ca-certificates --verbose --include=wget ${distro} $rootfs_output $repo &
    else
        debootstrap --arch armhf --foreign --verbose --variant=minbase --include=wget ${distro} $rootfs_output $repo &
    fi    
}
debootOS
