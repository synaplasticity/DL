#!/bin/bash

# Check GPU
nvidia-smi

# Check versions
python --version                                            
conda --version

# Get course stuff from git
git clone https://github.com/fastai/courses.git

# get dog-cats data
mkdir data   
cd data
apt-get install unzip
wget http://files.fast.ai/data/dogscats.zip
unzip -q dogscats.zip


