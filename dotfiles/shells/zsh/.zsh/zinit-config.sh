zinit light zinit-zsh/z-a-patch-dl

zinit wait lucid light-mode for \
  zdharma/fast-syntax-highlighting \
  atload"_zsh_autosuggest_start" zsh-users/zsh-autosuggestions \
  zdharma/history-search-multi-word 

zplugin pack"binary+keys" for fzf

SHOW_AWS_PROMPT=false
zinit snippet OMZ::plugins/aws/aws.plugin.zsh

zinit snippet OMZ::plugins/git/git.plugin.zsh