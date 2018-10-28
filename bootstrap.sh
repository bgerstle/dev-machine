#! /bin/bash

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install pip
# TODO: install pip w/o sudo
# sudo easy_install pip

# Install ansible
pip install -r requirements.txt
