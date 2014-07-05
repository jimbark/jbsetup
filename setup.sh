#!/bin/bash
# Simple setup.sh for configuring Ubuntu 12.04 LTS EC2 instance
# for headless setup. 

# Install nvm: node-version manager
# https://github.com/creationix/nvm
sudo apt-get install -y git
sudo apt-get install -y curl
curl https://raw.githubusercontent.com/creationix/nvm/v0.8.0/install.sh | sh
# Load nvm and install latest production node
source $HOME/.nvm/nvm.sh
nvm install v0.10
nvm use v0.10

# Install jshint to allow checking of JS code within emacs
# http://jshint.com/
npm install -g jshint

# Install rlwrap to provide libreadline features with node
# See: http://nodejs.org/api/repl.html#repl_repl
sudo apt-get install -y rlwrap

# Install emacs24
# https://launchpad.net/~cassou/+archive/emacs
sudo add-apt-repository -y ppa:cassou/emacs
sudo apt-get -qq update
sudo apt-get install -y emacs24-nox emacs24-el emacs24-common-non-dfsg

# Install Heroku toolbelt
# https://toolbelt.heroku.com/debian
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sudo sh

# install dotfiles as well
cd $HOME
if [ -d .emacs.d/ ]; then
    mv .emacs.d .emacs.d~
fi

ln -sb jbsetup/dotfiles/.screenrc .
ln -sb jbsetup/dotfiles/.bash_profile .
ln -sb jbsetup/dotfiles/.bashrc .
ln -sb jbsetup/dotfiles/.bashrc_custom .
ln -sf jbsetup/dotfiles/.emacs.d .

