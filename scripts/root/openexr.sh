#!/bin/sh

yum -y install OpenEXR
yum -y install OpenEXR-libs
cd /home/$USER/app
wget https://github.com/openexr/openexr/archive/v2.3.0.tar.gz
tar -zxvf v2.3.0.tar.gz
cd openexr-2.3.0
cd IlmBase
./bootstrap
./configure --prefix=$HOME/app/openexr --with-ilmbase-prefix=$HOME/app/IlmBase
make
make install
