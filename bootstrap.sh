#!/usr/bin/env bash

echo "Installing base packages"
yum install -y cmake git unzip tree 
yum install -y epel-release
yum install -y python python-devel qt qt-devel wget tcsh xauth xclock
yum install -y gcc-c++ mlocate time ImageMagick ImageMagick-c++
yum install -y xorg-x11-fonts-*
yum install -y mesa-*
yum install -y opencv opencv-python numpy numpy-f2py scipy python-pip
updatedb

pip install scikit-learn
pip install chmutil

# imod
echo "Imod installation"
wget http://bio3d.colorado.edu/imod/AMD64-RHEL5/imod_4.9.4_RHEL6-64_CUDA6.0.sh
chmod a+x imod_4.9.4_RHEL6-64_CUDA6.0.sh
./imod_4.9.4_RHEL6-64_CUDA6.0.sh -yes
rm -f imod*sh

# singularity install

VERSION=2.3.1
wget https://github.com/singularityware/singularity/releases/download/$VERSION/singularity-$VERSION.tar.gz
tar xvf singularity-$VERSION.tar.gz
cd singularity-$VERSION
./configure --prefix=/usr/local
make
make install
cd ..
rm -f singularity-$VERSION.tar.gz
rm -rf singularity-$VERSION

