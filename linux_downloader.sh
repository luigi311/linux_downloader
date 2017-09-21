#/bin/bash

arch=ftp://mirror.rackspace.com/archlinux/iso/
release=`curl -l $arch | sort -n -r | awk NR==1`
wget $arch/$release/*iso.torrent -P .


