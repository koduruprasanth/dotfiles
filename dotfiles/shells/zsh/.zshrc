# This dotfile is managed using dotdrop

source ~/.zsh/base.sh
source ~/.zsh/zinit.sh
source ~/.zsh/aliases.sh
source ~/.zsh/fzf-config.sh

# Initialize zsh completions
autoload -Uz compinit
compinit

# -q is for quiet; actually run all the `compdef's saved before
#`compinit` call (`compinit' declares the `compdef' function, so
# it cannot be used until `compinit' is ran; Zinit solves this
# via intercepting the `compdef'-calls and storing them for later
# use with `zinit cdreplay')
zinit cdreplay -q   

# Enable emacs keymap
bindkey -e

export EDITOR=vim

# # End of Configuration

# export ASDF_DIR=$(brew --prefix asdf)
# source $(brew --prefix asdf)/asdf.sh
