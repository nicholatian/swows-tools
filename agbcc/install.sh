#!/bin/sh
set -e
if [ "$1" != "" ]; then
    mkdir -p $1/tools/agbcc
    mkdir -p $1/tools/agbcc/bin
    mkdir -p $1/tools/agbcc/include
    mkdir -p $1/tools/agbcc/lib
    cp agbcc $1/tools/agbcc/bin/
    cp old_agbcc $1/tools/agbcc/bin/
    cp agbcc_arm $1/tools/agbcc/bin/
    cp -R libc/include $1/tools/agbcc/ #drop include, because we don't want include/include
    cp ginclude/* $1/tools/agbcc/include/
    cp libgcc.a $1/tools/agbcc/lib/
    cp libc.a $1/tools/agbcc/lib/
else
    echo "Usage: install.sh PATH"
fi
