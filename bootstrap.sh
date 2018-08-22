#! /bin/bash

# Install Command-Line Tools
# NOTE: requires user interaction
xcode-select --install

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install pip
sudo easy_install pip

# Install ansible
sudo pip install -r requirements.txt
