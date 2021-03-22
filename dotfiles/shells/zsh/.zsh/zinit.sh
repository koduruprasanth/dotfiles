ZINIT_HOME=$HOME/.zinit

if [[ ! -f $ZINIT_HOME/bin/zinit.zsh ]]; then
    echo "Cloning zinit to $ZINIT_HOME"
	git clone https://github.com/zdharma/zinit.git $ZINIT_HOME/bin
	zcompile $ZINIT_HOME/bin/zinit.zsh
fi

source $ZINIT_HOME/bin/zinit.zsh

# Zplugin annexes
zinit light-mode for \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-submods \
    zinit-zsh/z-a-bin-gem-node \
    zinit-zsh/z-a-rust

zinit lucid as=program pick="$ZPFX/bin/(fzf|fzf-tmux)" \
    atclone="cp shell/completion.zsh _fzf_completion; \
      cp bin/(fzf|fzf-tmux) $ZPFX/bin" \
    make="!PREFIX=$ZPFX install" for \
        junegunn/fzf

zinit wait lucid light-mode for \
  atinit"ZINIT[COMPINIT_OPTS]=-C; zpcompinit; zpcdreplay" zdharma/fast-syntax-highlighting \
  atload"!_zsh_autosuggest_start" zsh-users/zsh-autosuggestions \
  atinit'zstyle ":history-search-multi-word" page-size "7"' zdharma/history-search-multi-word \
  Aloxaf/fzf-tab

zinit wait"2" lucid as"null" from"gh-r" for \
    mv"exa* -> exa" sbin  ogham/exa \
    mv"fd* -> fd" sbin"fd/fd"  @sharkdp/fd

zinit lucid for \
    as"command" from"gh-r" atload'eval "$(starship init zsh)"' \
    starship/starship

# zplugin pack"binary+keys" for fzf

SHOW_AWS_PROMPT=false
zinit snippet OMZP::aws

zinit snippet OMZP::git