#!/usr/bin/env sh

git clone --recursive --depth=1 --branch $PROJECT_REF $PROJECT_URL project
cd project
git checkout $PROJECT_REF
python setup.py bdist_wheel
