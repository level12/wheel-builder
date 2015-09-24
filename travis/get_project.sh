#!/usr/bin/env sh

hg clone -u https://bitbucket.org/cffi/cffi -u release-1.2
cd cffi
python setup.py bdist_wheel
