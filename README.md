# Dev Machine
Various scripts & files I use to set up a new Mac for development. Main components:

- Homebrew
- Ansible

For the purpose of installing:

- dotfiles
- brew packages/casks
- setting up system defaults

## Setup
- Run `./bootstrap.sh` to install prerequisites.
- Run `ansible-playbook all.yml`
- Download desired apps from App Store (iTerm2, Barkeeper, etc.)
- Import iterm2 settings from plist
- Install Source Code font

## Upgrading/Syncing
- Homebrew: `brew update && brew oudated | brew upgrade`
- Sync iTerm2 settings (Preferences > General > "Save Current Settings to Folder")
