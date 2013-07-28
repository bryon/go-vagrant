GO_TAR=go1.1.1.linux-amd64.tar.gz
GO_PATH_LINE='export GOPATH=/vagrant; export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin;'
dpkg-query -s libc6 git bzr mercurial > /dev/null 2> /dev/null
if [[ $? == 1 ]]; then
    echo '------------> installing Go dependencies.'
    apt-get update > /dev/null
    apt-get -y install bzr mercurial git libc6 > /dev/null
else
    echo '------------> Go dependencies already installed.'
fi
if [[ ! -d /usr/local/go ]]; then
    echo '------------> installing Go.'
    wget http://go.googlecode.com/files/$GO_TAR 2> /dev/null
    tar -C /usr/local -xzf $GO_TAR
    rm -f $GO_TAR
else
    echo '------------> Go already installed.'
fi
if [[ ! `tail -n 1 /etc/profile` == $GO_PATH_LINE ]]; then
    echo '------------> Adding Go to /etc/profile.'
    echo $GO_PATH_LINE >> /etc/profile
else
    echo '------------> Go already in /etc/profile.'
fi
echo 'huzzah!'
