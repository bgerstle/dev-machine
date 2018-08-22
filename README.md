# Dev Machine
Various scripts & files I use to set up a new Mac for development. Main components:

- Homebrew
- Ansible

For the purpose of installing:

- [x] dotfiles
- [x] brew packages & casks
- [ ] applying system preferences
- [ ] installing preferred font

## Setup
- Open "Terminal"
- Run `./bootstrap.sh` to install prerequisites.
- Run `ansible-playbook all.yml`
- Download any other desired apps from App Store
- Import iterm2 settings from plist
- Install Source Code font

## Upgrading/Syncing
- Homebrew: `brew update && brew oudated | brew upgrade`
- Sync iTerm2 settings (Preferences > General > "Save Current Settings to Folder")
- Sync OS X defaults using export_defaults script for Finder & Dock
