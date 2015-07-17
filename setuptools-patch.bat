rem the only reason we have to have this file is b/c fart exits with a 1
fart -c setup.py "from distutils.core import setup" "from setuptools import setup"
exit 0
