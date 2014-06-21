jbsetup.git
=========
Clone and run this on a new EC2 instance running Ubuntu 12.04.2 LTS to
configure both the machine and your individual development environment as
follows:

```sh
cd $HOME
sudo apt-get install -y git-core
git clone https://github.com/?????????/jbsetup.git
./jbsetup/setup.sh   
```

script includes setup of .dotfiles to configure bash and emacs enviornment by running this for you:

```sh
cd $HOME
ln -sb jbsetup/dotfiles/.screenrc .
ln -sb jbsetup/dotfiles/.bash_profile .
ln -sb jbsetup/dotfiles/.bashrc .
ln -sb jbsetup/dotfiles/.bashrc_custom .
mv .emacs.d .emacs.d~
ln -s jbsetup/dotfiles/.emacs.d .
```

If all goes well, in addition to a more useful prompt, now you can
do `emacs -nw hello.js` and hitting `C-c!` to launch an interactive SSJS
REPL, among many other features.
