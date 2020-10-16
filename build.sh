#!/bin/sh
## -*- coding: utf-8 -*-

#cd agbcc
#./build.sh
#./install.sh ..
#cd ..

make -C bin2c
make -C gbafix
make -C gbagfx
make -C jsonproc
make -C mapjson
make -C mid2agb
make -C preproc
make -C ramscrgen
make -C rsfont
make -C scaninc
