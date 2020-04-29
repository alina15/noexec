#!/bin/bash
cp -r /etc/fstab /etc/fstab.bk
sed '/vgroup1-temp [/]tmp/s/,noexec//g' /etc/fstab.bk > /etc/fstab
mount -o remount,exec /tmp
mount | grep /tmp
