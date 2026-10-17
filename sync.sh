#!/bin/bash

set -e
set -o pipefail
set -u
set -x

cd "$(dirname "$0")"

date

rsync -avz --delete --exclude=".git" ../lnxcli/ /opt/lnxcli/

date
