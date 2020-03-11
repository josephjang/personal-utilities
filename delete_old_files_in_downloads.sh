#! /usr/bin/env bash

set -euo pipefail
IFS=$'\n\t'

download_dir="${HOME}/Downloads/"

if [[ ! -d ${download_dir} ]]
then
  echo "The download directory ${download_dir} does not exist." >&2
  exit 1
fi

if ! find /home/josephjang/Downloads/ -type f -ctime +5 -delete
then 
  echo "Deleting the old files from the download directory failed." >&2
  exit 1
fi

