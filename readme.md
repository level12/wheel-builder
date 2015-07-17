Building Python Wheels for Windows
==================================

At [Level 12][level12] we often have the need for Windows wheels for projects that don't publish them.  This
is due to

1. Our practice of shipping [wheelhouses][wheelhouse] with our projects to ensure testing and
deployment consistency.
2. The need for some of our apps to run on Windows.
3. A preference of some of our devs to not have to run Windows on their dev machines.

So, since we needed to build Windows wheels for ourselves, we figured we'd make them available to
others as well.

Security
--------

Can you trust the wheels we publish?  The entire build process is here in the open on GitHub and
the wheels are being built in a [public project on Appveyor][av project].

Where do I find the Wheels?
---------------------------

Start by hitting the build history for the project:

* [SQLAlchemy](https://ci.appveyor.com/project/rsyring/wheel-builder/history?branch=sqlalchemy)
* [wrapt](https://ci.appveyor.com/project/rsyring/wheel-builder/history?branch=wrapt)

Then:

1. Choose the environment that matches the Python version you need the wheel for.
2. Choose the artifacts tab.
3. Profit!

Project Maintainers
-------------------

We are committed to turning around builds for new releases as soon as possible.  In order to make
that happen, please:

* Have us create a branch for your project.  You'll only need to do this once.
* Fork this repo, update the `appveyor.yml` file with the tag/commit of your new release and send a
  PR against your project's branch.
* We'll do our best to accept these PRs ASAP so the wheels can be ready to ship to PyPI with
  the rest of your files.

However, for the best results, we recommend you setup your project to test and build on
appveyor yourself.  Appveyor has free plans for OSS and here are a couple example projects to take
a look at:

* https://github.com/ogrisel/python-appveyor-demo
* https://github.com/level12/sqlalchemy-appveyor/tree/appveyor
    * In particular, we put a lot of effort into getting the SQL Server configuration running well
    for testing purposes.

Issues
------

If you have an isssue with bugs, etc. in upstream projects, please contact those projects.

You can create an issue/PR on this project if:

* You would like to see us support another project.
* The wheels we are publishing need to be built differently or are otherwise defective.
* You'd like to see us build wheels for other Python versions.
* Upstream projects are behind and we haven't built wheels for that release
* etc.



[level12]: https://www.level12.io/
[wheelhouse]: https://pypi.python.org/pypi/Wheelhouse
[av project]: https://ci.appveyor.com/project/rsyring/wheel-builder
