# Dev Machine
Various scripts & files I use to set up a new Mac for development. Main components:

- Homebrew
- Ansible

For the purpose of installing:

- [x] dotfiles
- [x] brew packages & casks
- [x] applying system preferences
- [x] installing preferred font

## Setup
- Open "Terminal"
- Run `./bootstrap.sh` to install prerequisites.
- Run `ansible-playbook all.yml`
- Download any other desired apps from App Store
- Configure iterm2 to use `./prefs` folder to sync defaults
- Import IntelliJ settings from `.jar` file in `./prefs`
- Install Settings Sync vscode extension and download settings

## Upgrading/Syncing
- Homebrew: `brew update && brew oudated | brew upgrade`
- Sync iTerm2 settings (Preferences > General > "Save Current Settings to Folder")
- Sync OS X defaults using export_defaults script for Finder & Dock
