#!/bin/sh
set -e
if [ "$1" != "" ]; then
    mkdir -p $1
    mkdir -p $1/bin
    mkdir -p $1/include
    mkdir -p $1/lib
    cp agbcc $1/bin/
    cp old_agbcc $1/bin/
    cp agbcc_arm $1/bin/
    cp -R libc/include $1/ #drop include, because we don't want include/include
    cp ginclude/* $1/include/
    cp libgcc.a $1/lib/
    cp libc.a $1/lib/
else
    echo "Usage: install.sh PATH"
fi
