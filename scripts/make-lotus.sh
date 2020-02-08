#!/bin/sh

sudo add-apt-repository -y ppa:longsleep/golang-backports
sudo apt update -y
sudo apt install -y golang-go gcc git bzr jq pkg-config mesa-opencl-icd ocl-icd-opencl-dev

temp_dir=$(mktemp -d)

git clone https://github.com/filecoin-project/lotus.git $temp_dir
cd $temp_dir
make clean
make all
sudo make install
