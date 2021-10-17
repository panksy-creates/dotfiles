

export GOPATH="$HOME/workspace/go"

# keep path entries unique
typeset -U PATH path
path=("$HOME/.local/bin" "$GOPATH/bin" "$path[@]")
export PATH

zstyle ':completion:*' menu select
setopt COMPLETE_ALIASES

CDPATH="$HOME/workspace:$HOME/Documents:$GOPATH"

fpath+=$HOME/.zsh/pure
autoload -Uz compinit promptinit
compinit
promptinit

prompt pure

[[ -e "$HOME/.aliases" ]] && source "$HOME/.aliases"

