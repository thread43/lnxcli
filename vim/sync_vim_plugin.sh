#!/bin/bash

set -e
set -o pipefail
set -u
set -x

cd "$(dirname "$0")"

date

rm -rf plugin
mkdir -p plugin

rsync -avz --delete --stats --progress --exclude=".git" /opt/vim/ plugin/
rsync -avz --delete --stats --progress vim_snippets/snippets/ plugin/bundle/misc/snippets/

# (cd /opt/lnxcli/vim && zip -qr plugin.zip plugin)
# rm -f plugin.zip
# cp -a /opt/lnxcli/vim/plugin.zip .

# rm -f plugin.zip
# zip -qr plugin.zip plugin

date
