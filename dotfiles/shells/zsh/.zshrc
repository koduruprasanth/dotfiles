# {{@@ header() @@}}

source ~/.zsh/zinit.sh
source ~/.zsh/aliases.sh

# Initialize zsh completions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit -i
fi



bindkey -e

export EDITOR=vi

# End of Configuration

export ASDF_DIR=$(brew --prefix asdf)
source $(brew --prefix asdf)/asdf.sh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="{{@@ env['HOME'] @@}}/.sdkman"
[[ -s "{{@@ env['HOME'] @@}}/.sdkman/bin/sdkman-init.sh" ]] && source "{{@@ env['HOME'] @@}}/.sdkman/bin/sdkman-init.sh"