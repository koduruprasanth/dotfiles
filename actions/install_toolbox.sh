toolbox --version 1>/dev/null
if [[ $? != 0 ]] ; then
    # Install Toolbox
    /usr/bin/curl -fLSs -b ~/.midway/cookie \
  'https://buildertoolbox-bootstrap.s3-us-west-2.amazonaws.com/toolbox-install.sh' \
  -o /tmp/toolbox-install.sh && /bin/bash /tmp/toolbox-install.sh
else
    echo "Builder Toolbox already installed"
fi