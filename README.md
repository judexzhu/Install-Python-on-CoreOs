# python-on-coreos
Python on CoreOS. works well with ansible.

this script install Active Python x86_64 binary to CoreOS and flatcar-linux.

=======================================================================================

## Important: Read This First.

https://downloads.activestate.com/ActivePython/releases currently is not working, following is the work arround how I resolve this problem.

1. go to https://www.activestate.com/products/python/downloads/

    Scoll down to "Need Older Builds Or MacOS Support?", click "Linux: [ActivePython 3.8](https://platform.activestate.com/activestate/ActivePython-3.8/auto-fork?content=dl_activepython_linux&download=linux&_fs=b186abc5-573e-4459-9e6d-b7279c90fcac)"

2. You will see a account registration page. Register an account or sign in 
3. Activestat will fork a AcvtivePython project for you, for example: ActivePython-3.8
4. Download ActivePython-3.8.8.0000-linux-x86_64-glibc-2.17-5222f37a.tar.gz to your local filesystem.
5. Upload to your own http file share service, I used Jfrog Artifactory(A generic local repository is what you need).
6. replace the https://downloads.activestate.com/ActivePython/ with your own http file share url.
7. I provided a dropbox url, but this link is not guaranteed for long time existing.
8. The install step is the same

=======================================================================================

INSTALL
=======

**Python2 support beyond EOL EOL, I've removed the script**



### Python3

```
wget -qO- https://raw.githubusercontent.com/judexzhu/Install-Python-on-CoreOs/master/install-python3.sh | sudo bash
```
> Tested and works well with Ansible

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

