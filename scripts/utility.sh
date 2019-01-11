#!/bin/sh
yum -y install git
yum -y install espeak
yum -y install oneko
yum -y install mesa-libGLU # for Nuke
yum -y install transmission
yum -y install tigervnc
yum -y install filezilla

# ripgrep
yum -y -config-manager --add-repo=https://copr.fedorainfracloud.org/coprs/carlwgeorge/ripgrep/repo/epel-7/carlwgeorge-ripgrep-epel-7.repo
yum -y install ripgrep

# chrome
cd /tmp
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
yum -y localinstall google-chrome-stable_current_x86_64.rpm
