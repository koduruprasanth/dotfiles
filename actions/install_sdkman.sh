if [ -d "$HOME/.sdkman" ]; then
    echo "SDKMAN already installed"
else
    # Install SDKMAN
    curl -s "https://get.sdkman.io" | bash
fi