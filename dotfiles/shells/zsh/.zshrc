# {{@@ header() @@}}

source ~/.zsh/aliases.sh

export EDITOR=vi

# End of Configuration
[ -f ~/.zsh/fzf.zsh ] && source ~/.zsh/fzf.zsh
eval "$(starship init zsh)"
eval "$(pyenv init -)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="{{@@ env['HOME'] @@}}/.sdkman"
[[ -s "{{@@ env['HOME'] @@}}/.sdkman/bin/sdkman-init.sh" ]] && source "{{@@ env['HOME'] @@}}/.sdkman/bin/sdkman-init.sh"