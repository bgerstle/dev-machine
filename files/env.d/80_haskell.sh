
# Add stack local bin to path
export PATH="$HOME/.local/bin:$PATH"

# Setup bash completion for stack
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit
eval "$(stack --bash-completion-script stack)"
