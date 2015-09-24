#!/usr/bin/env sh

git clone --depth=1 --branch $PROJECT_REF $PROJECT_URL project
cd project
git checkout $PROJECT_REF
sed -i '/tag_build = dev/d' ./setup.cfg
python setup.py bdist_wheel
