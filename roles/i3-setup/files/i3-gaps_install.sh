#!/bin/bash

I3_PARENT_FOLDER=~/Git
cd $I3_PARENT_FOLDER/i3-gaps
autoreconf --force --install
mkdir build && cd build
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install
