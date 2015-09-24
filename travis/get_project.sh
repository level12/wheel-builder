#!/usr/bin/env sh

hg clone -u release-1.2 https://bitbucket.org/cffi/cffi
cd cffi
python setup.py bdist_wheel
