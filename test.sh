#!/bin/sh

echo "running apt-get update"
apt-get -qq update
echo "installing curl"
apt-get install curl -qq > /dev/null
echo "downloading om cli"
curl -LO https://github.com/pivotal-cf/om/releases/download/0.53.0/om-linux
echo "setting permissions on om cli"
chmod +x ./om-linux
ls -l
echo "show man page"
./om-linux
echo "curl google.com"
curl -I www.google.com