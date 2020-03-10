#!/bin/bash -uxe

VERSION=3.6.6.3606
PACKAGE=ActivePython-${VERSION}-linux-x86_64-glibc-2.12

# make directory
mkdir -p /opt/bin
cd /opt

wget https://downloads.activestate.com/ActivePython/releases/${VERSION}/${PACKAGE}.tar.gz
tar -xzvf ${PACKAGE}.tar.gz

mv ${PACKAGE}-10a6f8f1 apy && cd apy && ./install.sh -I /opt/python/

ln -sf /opt/python/bin/easy_install /opt/bin/easy_install
ln -sf /opt/python/bin/pip /opt/bin/pip
ln -sf /opt/python/bin/python3 /opt/bin/python
ln -sf /opt/python/bin/python3 /opt/bin/python3
ln -sf /opt/python/bin/virtualenv /opt/bin/virtualenv
