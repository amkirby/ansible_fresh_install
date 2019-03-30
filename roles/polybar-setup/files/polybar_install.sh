#!/bin/bash

POLYBAR_PARENT_FOLDER=~/Git

# install siji font first
cd $POLYBAR_PARENT_FOLDER/siji
./install.sh
sudo dpkg-reconfigure fontconfig-config
sudo rm /etc/fonts/conf.d/70-no-bitmaps.conf && fc-cache

cd $POLYBAR_PARENT_FOLDER/polybar
mkdir build && cd build
cmake ..
make -j$(nproc)
sudo make install
