if [ -d "$HOME/.zinit" ]; then
    echo "Zinit already installed"
else
    # Install Zinit
    mkdir ~/.zinit
    git clone https://github.com/zdharma/zinit.git ~/.zinit/bin
fi