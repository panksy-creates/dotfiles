autoload -Uz compinit promptinit
compinit
promptinit

# keep path entries unique
typeset -U PATH path
path=("$HOME/.local/bin"  "$path[@]")
export PATH

zstyle ':completion:*' menu select
setopt COMPLETE_ALIASES

prompt adam2

