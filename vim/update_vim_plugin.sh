#!/bin/bash

set -e
set -o pipefail
set -u
set -x

cd "$(dirname "$0")"

date

base_path="/opt/vim/bundle"

targets="$(ls ${base_path})"

for target in $targets; do
  if [ -d "${base_path}/${target}" ]; then
    if [ -d "${base_path}/${target}/.git" ]; then
      echo "${base_path}/${target}"
      # cd ${base_path}/${target} && git pull origin master
      cd "${base_path}/${target}" && git pull
    fi
  fi
done

date
