#!/bin/bash

# ****************************************************
#
# Set different dirent
# ****************************************************
if [ -z $ROOT ]; then
    ROOT=`cd .. && pwd`
fi
# Output of rootfs
rootfs_output=$ROOT/rootfs

# ****************************************************
# Select Ubuntu/Debian distribution and repository
# 
# ****************************************************

# === Ubuntu Distro ===
#distro="precise"
#distro="trusty"
#distro="utopic"
#distro="vivid"
#distro="wily"
#distro="xenial"
#repo="http://ports.ubuntu.com/ubuntu-ports"
#raspbian="no"

# === Debian Distro ===
#distro="wheezy"
distro="jessie"
repo="http://ftp.hr.debian.org/debian"
raspbian="no"

# === Raspbian Distro ===
#distro="wheezy"
#distro="jessie"
#repo="http://archive.raspbian.org/raspbian"
#raspbian="yes"

