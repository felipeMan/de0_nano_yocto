#!/bin/bash
WS='/home/yocto/altera'
export YOCTO_VER=nanbield
rm -rf $WS/poky-socfpga && mkdir $WS/poky-socfpga && cd $WS/poky-socfpga
git clone -b $YOCTO_VER https://git.yoctoproject.org/git/poky.git
mkdir layers && cd layers
ln -s ./../poky/meta meta
ln -s ./../poky/meta-poky meta-poky
ln -s ./../poky/meta-yocto-bsp meta-yocto-bsp
git clone -b $YOCTO_VER https://git.openembedded.org/meta-openembedded
git clone -b $YOCTO_VER https://git.yoctoproject.org/git/meta-intel-fpga
git clone -b $YOCTO_VER https://github.com/altera-opensource/meta-intel-fpga-refdes.git
cd ..
