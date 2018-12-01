#!/bin/bash
#
# This script tests Python 2.6 using the virtual environment at ".py26-env".
# This simplifies testing because Tox no longer supports Python 2.6.
#
set -e

# Activate environment.
cd .py26-env
source bin/activate

# Install local package.
cd ..
python setup.py clean --all
python setup.py build
python setup.py install

# Test local package.
python setup.py test
