# python-on-coreos
Python on CoreOS. works well with ansible.

this script install Active Python x86_64 binary to CoreOS.


INSTALL
=======

```
wget -qO- https://raw.githubusercontent.com/judexzhu/Install-Python-on-CoreOs/master/install-python.sh | sudo bash
```

RUNNING
=======

/opt/bin/python will works well.

if you want to run python in anywhere, just make ~/.bashrc file which contains this.
```
export PATH=$PATH:/opt/bin
```

or just run this command
```
cat > ~/.bashrc << EOF
export PATH=\$PATH:/opt/bin
EOF
```


WITH ANSIBLE
============
check sample-ansible-hosts file. there would be all you need to.

```
ansible -m setup -i hosts core-01
```

