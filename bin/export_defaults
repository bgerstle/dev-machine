#! /bin/bash

function exit_with_usage() {
  printf "usage:  \n\
$0 [-h|--help] domain plist_filename \n\
    domain          - The defaults domain to export, e.g. com.apple.finder or -app iterm.
    plist_filename  - The name of the plist file where preferences will be exported."
  exit 1
}

if [[ $1 == "-h" || $1 == "--help" ]]
then
  exit_with_usage
elif [[ ${#@} != 2 ]]
then
  echo "Invalid args: \"$@\". If using -app domain, wrap in single quotes."
  exit_with_usage
fi

DOMAIN=$1
PLIST_FILENAME=$2

echo "Exporting defaults for \"$DOMAIN\" to ${PLIST_FILENAME}..."
defaults export $DOMAIN $PLIST_FILENAME && plutil -convert xml1 $PLIST_FILENAME