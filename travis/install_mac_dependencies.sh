#!/usr/local/bin sh
if [[ "$TRAVIS_OS_NAME" == "osx" ]]; then
    brew update
    brew install pip
    pip install virtualenv
else
    return 0
fi
