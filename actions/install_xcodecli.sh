xcode-select -p 1>/dev/null
if [[ $? != 0 ]] ; then
    /usr/bin/xcode-select --install
else
    echo "xcode tools already installed"
fi