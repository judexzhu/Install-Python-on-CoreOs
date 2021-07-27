#!/bin/bash -uxe

# https://www.dropbox.com/s/y44nf6od3153kfd/ActivePython-3.8.8.0000-linux-x86_64-glibc-2.17-5222f37a.tar.gz

VERSION=3.8.8.0000
PACKAGE=ActivePython-${VERSION}-linux-x86_64-glibc-2.17-5222f37a

# make directory
mkdir -p /opt/bin
cd /opt

wget https://www.dropbox.com/s/y44nf6od3153kfd/${PACKAGE}.tar.gz
tar -xzvf ${PACKAGE}.tar.gz

mv ${PACKAGE} apy && cd apy && ./install.sh -I /opt/python/

ln -sf /opt/python/bin/easy_install /opt/bin/easy_install
ln -sf /opt/python/bin/pip /opt/bin/pip
ln -sf /opt/python/bin/python3 /opt/bin/python
ln -sf /opt/python/bin/python3 /opt/bin/python3
ln -sf /opt/python/bin/virtualenv /opt/bin/virtualenv
