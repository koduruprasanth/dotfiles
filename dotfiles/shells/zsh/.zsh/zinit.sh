ZINIT_HOME=$HOME/.zinit
typeset -g ZPLG_MOD_DEBUG=1

# Ignore insecure directories
# declare -A ZINIT
# export ZINIT[COMPINIT_OPTS]=-i

if [[ ! -f $ZINIT_HOME/bin/zinit.zsh ]]; then
    echo "Cloning zinit to $ZINIT_HOME"
	git clone https://github.com/zdharma/zinit.git $ZINIT_HOME/bin
	# zcompile $ZINIT_HOME/bin/zinit.zsh
fi

source $ZINIT_HOME/bin/zinit.zsh

# # Zplugin annexes
zinit light-mode for \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-submods \
    zinit-zsh/z-a-bin-gem-node \
    zinit-zsh/z-a-rust

zinit lucid for \
    as"program" from"gh-r" atload'eval "$(starship init zsh)"' starship/starship \
    as"program" pick="$ZPFX/bin/(fzf|fzf-tmux)" \
        multisrc"shell/{completion,key-bindings}.zsh" \
        atclone="cp bin/(fzf|fzf-tmux) $ZPFX/bin" \
        make="!PREFIX=$ZPFX install" \
        junegunn/fzf

zinit wait lucid light-mode for \
    atinit="zicompinit; zicdreplay" zdharma/fast-syntax-highlighting \
    atload"!_zsh_autosuggest_start" zsh-users/zsh-autosuggestions \
    Aloxaf/fzf-tab

zinit lucid as"null" from"gh-r" for \
    mv"exa* -> exa" sbin  @ogham/exa \
    mv"fd* -> fd" sbin"fd/fd"  @sharkdp/fd \
    mv"bat* -> bat" sbin"bat/bat" @sharkdp/bat

zplugin ice as"program" pick"$ZPFX/sdkman/bin/sdk" id-as'sdkman' run-atpull \
  atclone"wget https://get.sdkman.io -O scr.sh; SDKMAN_DIR=$ZPFX/sdkman bash scr.sh" \
  atpull"SDKMAN_DIR=$ZPFX/sdkman sdk selfupdate" \
  atinit"export SDKMAN_DIR=$ZPFX/sdkman; source $ZPFX/sdkman/bin/sdkman-init.sh"
zplugin light zdharma/null

SHOW_AWS_PROMPT=false
zinit snippet OMZP::aws

zinit snippet OMZP::git
# zinit snippet OMZP::brew
