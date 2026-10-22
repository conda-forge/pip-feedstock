#!/bin/bash

# remove the vendored CA bundle; ca-certificates is used instead
rm src/pip/_vendor/certifi/cacert.pem

# use the pip source to install itself
PYTHONPATH="./src" $PYTHON -m pip install . -vv

cd $PREFIX/bin
rm -f pip2* pip3*
rm -f $SP_DIR/__pycache__/pkg_res*
