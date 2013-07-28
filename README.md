# Go Vagrant

No Frills Go, In Vagrant.

Everything else had too much stuff. I just want Go. In Vagrant.

## Usage

You need:

1. [Vagrant][]
2. [Virtualbox][]

then:

```shell
$ git clone https://github.com/jakebasile/go-vagrant.git $YOUR_DESIRED_GOPATH_LOCATION
$ cd $YOUR_DESIRED_GOPATH_LOCATION
$ vagrant up
```

Now you're SSHed into a server with a working, barebones Go installation and an empty GOPATH.

If you want to keep your entire GOPATH in git, you can then (in your host machine):

```shell
$ rm -rf $YOUR_DESIRED_GOPATH_LOCATION/.{git,gitignore}
```

[Vagrant]: http://vagrantup.com/
[VirtualBox]: http://virtualbox.org/

