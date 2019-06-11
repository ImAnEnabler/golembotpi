#!/bin/bash
echo 'patching up...'
apt update && apt upgrade --yes && apt dist-upgrade --yes && apt autoremove --yes

echo 'updating locale...'
sed -i '/en_GB.UTF-8/s/^/# /' /etc/locale.gen
sed -i '/en_US.UTF-8/s/# //' /etc/locale.gen
locale-gen

