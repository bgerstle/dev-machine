ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="crunch"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(osx brew git-extras git)

source "${ZSH}/oh-my-zsh.sh"

# User configuration

# Preferred editor for local and remote sessions (mavim overrides vim)
export EDITOR='vim'

# Grep flags
export GREP_OPTIONS='--color=auto --exclude=*.pyc --exclude-dir=.git --exclude-dir=node_modules --exclude-dir=.meteor --exclude=*.sw* --exclude-dir=bundle --exclude-dir=.vagrant --exclude=*.box --exclude=.vimtags'

[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

# HAX: manually add stuff to path for android
# TODO: boxenize this
export PATH=$PATH:~/Library/Android/sdk/platform-tools

[ -d ~/.env.d ] && for e in `find ~/.env.d/*`; do source $e; done

# Source startup script specific to current box (i.e. work-only stuff)
[ -f ~/.localrc ] && source ~/.localrc
