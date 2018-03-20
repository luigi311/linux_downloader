#/bin/bash

#Archlinux
arch=ftp://mirror.rackspace.com/archlinux/iso/
release=`curl -l $arch | sort -n -r | awk NR==1`
wget $arch/$release/*iso.torrent -P .

#Ubuntu
ubuntu=ftp://releases.ubuntu.com/releases/
release=`curl -l $ubuntu | sort -n -r | awk NR==1`
wget $ubuntu/$release/*iso.torrent -P .

#Centos
centos=ftp://mirror.rackspace.com/CentOS/
release=`curl -l $centos | sort -n -r | awk NR==1`
wget -r -nH --cut-dirs=5 --no-parent -A "*Everything*.torrent" $centos/$release/isos/x86_64/ -P $torrent_location/

#Fedora 
wget -r -nH --cut-dirs=2 --no-parent -A "*Workstation*i686*" -R  "*Alpha*" -R "*Beta*" http://torrent.fedoraproject.org/torrents/ -P .
wget -r -nH --cut-dirs=2 --no-parent -A "*Workstation*x86_64*" -R  "*Alpha*" -R "*Beta*" http://torrent.fedoraproject.org/torrents/ -P .
wget -r -nH --cut-dirs=2 --no-parent -A "*Server*i686*" -R  "*Alpha*" -R "*Beta*" http://torrent.fedoraproject.org/torrents/ -P .
wget -r -nH --cut-dirs=2 --no-parent -A "*Server*x86_64*" -R  "*Alpha*" -R "*Beta*" http://torrent.fedoraproject.org/torrents/ -P .

#Kali
wget -r -nH --cut-dirs=6 --no-parent -A "*.torrent" https://cdimage.kali.org/kali-images/current/ -P .
