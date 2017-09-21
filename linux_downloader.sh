#/bin/bash

arch=ftp://mirror.rackspace.com/archlinux/iso/
release=`curl -l $arch | sort -n -r | awk NR==1`
wget $arch/$release/*iso.torrent -P .

ubuntu=ftp://releases.ubuntu.com/releases/
release=`curl -l $ubuntu | sort -n -r | awk NR==1`
wget $ubuntu/$release/*iso.torrent -P .

centos=ftp://mirror.rackspace.com/CentOS/
release=`curl -l $centos | sort -n -r | awk NR==1`
wget -r -nH --cut-dirs=5 --no-parent -A "*Everything*.torrent" $centos/$release/isos/x86_64/ -P $torrent_location/
