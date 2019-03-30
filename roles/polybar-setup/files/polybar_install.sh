#!/bin/bash

POLYBAR_PARENT_FOLDER=~/Git
cd $POLYBAR_PARENT_FOLDER/polybar
mkdir build && cd build
cmake ..
make -j$(nproc)
sudo make install
