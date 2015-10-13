#!/usr/bin/env sh

git clone --depth=1 --branch $PROJECT_REF $PROJECT_URL project
cd project
git checkout $PROJECT_REF
mkdir dist
pip wheel --wheel-dir=./dist $PACKAGE_NAME
