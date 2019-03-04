#!/bin/sh

#echo "running apt-get update"
#apt-get -qq update
#echo "installing curl"
#apt-get install curl -qq > /dev/null
#echo "downloading om cli"
#curl -LO https://github.com/pivotal-cf/om/releases/download/0.53.0/om-linux
#echo "setting permissions on om cli"
#chmod +x ./om-linux
ls -l
# Test existence of pivnet-cli and error if not found
if ! type "pivnet-cli" > /dev/null
then
  echo "PIVNET-CLI NOT FOUND"
  exit 123
else
  echo "show pivnet-cli man page"
  pivnet-cli
fi
echo "curl it-test-app"
curl -k http://it-test-app:8085/api/PortTest/www.msn.com/443 | jq
#nslookup it-test-app
