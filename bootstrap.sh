#! /bin/bash

set +e

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install python

# Install ansible
pip3 install -r requirements.txt
