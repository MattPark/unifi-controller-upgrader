#!/bin/sh
apt-get update && apt-get -y upgrade
rm -f Packages.gz*
wget http://dl.ubnt.com/unifi/debian/dists/stable/ubiquiti/binary-armhf/Packages.gz
wget -q --output-document=upgrade.deb http://dl.ubnt.com/unifi/debian/$(zcat Packages | grep unifi_.*_all.deb | cut -d' ' -f2)
dpkg -i upgrade.deb
