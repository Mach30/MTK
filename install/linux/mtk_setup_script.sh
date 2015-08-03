#!/usr/bin/env bash
# Author: Mach 30: Foundation for Space Development - http://mach30.org
# License: Apache 2.0
# Writen and tested on Ubuntu 14.04
# This script will ask for a sudo password

echo "Installing the Mach 30 Mathematics Tool Kit (MTK)."
echo "This can take awhile. Please be patient."

echo "Switching to Downloads directory."
cd ~/Downloads

echo "Downloading Anaconda installer."
wget https://3230d63b5fc54e62148e-c95ac804525aac4b6dba79b00b39d1d3.ssl.cf1.rackcdn.com/Anaconda3-2.3.0-Linux-x86_64.sh

echo "Installing Anaconda. Please follow the instructions."
bash Anaconda3-2.3.0-Linux-x86_64.sh

echo "Reloading bashrc to pick up Anaconda changes"
source ~/.bashrc

echo "Updating Anaconda and installing IPython."
~/anaconda3/bin/conda update conda
~/anaconda3/bin/conda update ipython ipython-notebook ipython-qtconsole

# Install Mach 30 dependencies
pip install pint

cd ~/.ipython/nbextensions
wget https://github.com/ipython-contrib/IPython-notebook-extensions/archive/3.x.zip
unzip 3.x.zip
rm unzip 3.x.zip

# echo "Installing pandoc for PDF export."
sudo apt-get install pandoc texlive-latex-extra texlive-fonts-extra texlive-fonts-recommended 

echo "Finished installing MTK. Enjoy."
echo "If you have questions or want to get involved in the MTK project, see https://opendesignengine.net/projects/mtk"

