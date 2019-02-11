#!/bin/sh
yum install centos-release-scl
yum install devtoolset-6

cd /tmp
wget https://github.com/Kitware/CMake/releases/download/v3.13.3/cmake-3.13.3.tar.gz
tar -zxvf cmake-3.13.3.tar.gz -C ~/app
cd ~/app
mv ~/app/cmake-3.13.3 ~/app/cmake-3.13.3_src
mkdir cmake-3.13.3
cd ~/app/cmake-3.13.3_src
scl enable devtoolset-6 bash
./configure --prefix=$HOME/app/cmake-3.13.3
make
make install
