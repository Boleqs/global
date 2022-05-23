#!/bin/sh

### Installs the 3.10 version of python

# Am I root ?

if [ `whoami` != root ]
  then 
    echo "Please run this script as root"
    exit
  
  else 
    continue
fi

apt install build-essential \
zlib1g-dev \
libncurses5-dev \
libgdbm-dev \
libnss3-dev \
libssl-dev \
libreadline-dev \
libffi-dev \
libsqlite3-dev \
wget \
tar \
libbz2-dev

wget https://www.python.org/ftp/python/3.10.0/Python-3.10.0.tgz -P /tmp/
cd /etc
tar -xf /tmp/Python-3.10.0.tgz
cd /etc/Python-3.10.0/
./configure --enable-optimizations
make altinstall

# Is python well installed ?

test=`python3.10 --version`
if [ $test != python ]
  then 
    echo "An unknown error as occurred during Python 3.10 installation"
    exit

  else 
    continue
fi
apt install python3-pip
echo ""
echo ""
echo "Python is well installed."
echo ""
echo ""
