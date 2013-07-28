# Go Vagrant

No Frills Go, In Vagrant.

Everything else had too much stuff. I just want Go. In Vagrant.

## Usage

You need:

1. [Vagrant][]
2. [Virtualbox][]

then:

```bash
$ git clone https://github.com/jakebasile/go-vagrant.git $YOUR_DESIRED_GOPATH_LOCATION
$ cd $YOUR_DESIRED_GOPATH_LOCATION
$ vagrant up
$ vagrant ssh
```

Now you're SSHed into a server with a working, barebones Go installation and an empty GOPATH.

If you want to keep your entire GOPATH directory in git, you can then (in your host machine):

```bash
$ rm -rf $YOUR_DESIRED_GOPATH_LOCATION/.{git,gitignore}
$ git init $YOUR_DESIRED_GOPATH_LOCATION
```

[Vagrant]: http://vagrantup.com/
[VirtualBox]: http://virtualbox.org/

