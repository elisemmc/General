#!/bin/bash

echo Update and Upgrade
sudo apt-get update
sudo apt-get -y upgrade --fix-missing

echo Basics
sudo apt-get install -y vim git
mkdir ~/git
cd ~/git
git clone https://github.com/elisemmc/General.git
ln -sf ~/git/General/vim/.vimrc ~/.vimrc

git clone https://github.com/Reewr/vim-monokai-phoenix.git
mkdir -p ~/.vim/plugin/
ln -sf ~/git/vim-monokai-phoenix/colors/monokai-phoenix.vim ~/.vim/plugin/monokai-phoenix.vim

git config --global user.email 'crimsoncrescentmoon@gmail.com'
git config --global user.name 'Elise'

echo Python
sudo apt-get install python2.7
sudo apt-get install python3.5

sudo apt-get install -y build-essential

sudo apt-get install -y python-dev python-setuptools python-pip \
			python-numpy python-scipy python-pandas python3-matplotlib
sudo apt-get install -y python3-dev python3-setuptools python3-pip \
			python3-numpy python3-scipy python3-pandas python3-matplotlib

pip install --upgrade pip

pip install --user -U scikit-learn
pip3 install --user -U scikit-learn


