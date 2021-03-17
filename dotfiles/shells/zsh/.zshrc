# {{@@ header() @@}}

# Initialize zsh completions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

source ~/.zsh/aliases.sh

export EDITOR=vi

# End of Configuration
[ -f ~/.zsh/fzf.zsh ] && source ~/.zsh/fzf.zsh
eval "$(starship init zsh)"

export ASDF_DIR=$(brew --prefix asdf)
$(brew --prefix asdf)/asdf.sh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="{{@@ env['HOME'] @@}}/.sdkman"
[[ -s "{{@@ env['HOME'] @@}}/.sdkman/bin/sdkman-init.sh" ]] && source "{{@@ env['HOME'] @@}}/.sdkman/bin/sdkman-init.sh"