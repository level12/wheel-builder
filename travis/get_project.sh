#!/usr/bin/env sh

hg clone -u https://bitbucket.org/cffi/cffi
cd cffi
hg checkout -C release-1.2
cd ..
move cffi\dist\* .
