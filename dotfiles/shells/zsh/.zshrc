# {{@@ header() @@}}

source ~/.zsh/aliases.sh

export EDITOR=vi

# End of Configuration
[ -f ~/.zsh/fzf.zsh ] && source ~/.zsh/fzf.zsh
eval "$(starship init zsh)"
