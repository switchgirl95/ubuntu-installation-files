#!/bin/sh

#How to install ruby with rvm

#installation of dependencies required to install ruby

sudo apt-get update
sudo apt-get install -y curl gnupg build-essential

#2- Install RVM
sudo gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | sudo bash -s stable
sudo usermod -a -G rvm `whoami`

#3.1- Install latest version of Ruby
rvm install ruby
rvm --default use ruby

#3.2- Install particular version of Ruby
#rvm install ruby-X.X.X
#rvm --default use ruby-X.X.X

#4- Install Bundler
gem install bundler --no-rdoc --no-ri

#5- Uncomment only if you want to install Rails, else skip this step
#sudo apt-get install -y nodejs &&
#sudo ln -sf /usr/bin/nodejs /usr/local/bin/node
#gem install rails

#If there is a problem with rvm, try going to the command line and
#Edit > Profile Preferences > Tick "Run command as login shell"
