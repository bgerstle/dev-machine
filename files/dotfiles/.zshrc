ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="crunch"

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
export PATH=$PATH:~/Library/Android/sdk/platform-tools

alias screensaver=/System/Library/CoreServices/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine

# Source env.d scripts
[ -d ~/.env.d ] && for e in `find ~/.env.d/*`; do source $e; done

# Source startup script specific to current box (i.e. work-only stuff)
[ -f ~/.localrc ] && source ~/.localrc
