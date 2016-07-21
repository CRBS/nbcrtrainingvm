#!/usr/bin/env bash

echo "Installing base packages"
yum install -y cmake git 
yum install -y epel-release
yum install -y python python-devel qt qt-devel wget tcsh xauth xclock
yum install -y gcc-c++ mlocate time ImageMagick ImageMagick-c++
yum install -y xorg-x11-fonts-*
yum install -y mesa-*
updatedb
# imod
echo "Imod installation"
wget http://bio3d.colorado.edu/imod/AMD64-RHEL5/imod_4.7.15_RHEL6-64_CUDA6.0.csh
chmod a+x imod_4.7.15_RHEL6-64_CUDA6.0.csh
./imod_4.7.15_RHEL6-64_CUDA6.0.csh -yes


