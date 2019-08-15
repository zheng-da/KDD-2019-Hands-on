#!/bin/bash

set -e

cd $HOME
wget -q -O install.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && sh install.sh -b

CONDA_PREFIX=$HOME/miniconda3/bin
export PATH=$CONDA_PREFIX:$PATH
conda init bash

conda update -n base -c defaults conda
conda create -n kdd19 -y python=3.7
source activate kdd19
conda install -y pytorch=1.1.0 cpuonly -c pytorch
conda install -y mxnet pandas jupyter matplotlib scikit-learn
conda install -y dgl -c dglteam
conda install -y ffmpeg -c menpo
source deactivate kdd19

# clone the tutorial
git clone https://github.com/dglai/KDD-2019-Hands-on.git
