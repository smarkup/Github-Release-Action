#! /bin/sh

set -ex

apk add --update --no-cache git bash wget openssh libc6-compat

wget -O hub.tgz https://github.com/github/hub/releases/download/v2.12.3/hub-linux-amd64-2.12.3.tgz
mkdir /hub
tar -xvf hub.tgz -C /hub --strip-components 1
bash /hub/install
hub --version
#=========== Cleanup ===========
rm -v hub.tgz
rm -frv /hub
apk del bash wget