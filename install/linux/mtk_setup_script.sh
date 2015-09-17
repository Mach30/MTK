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
sudo bash Anaconda3-2.3.0-Linux-x86_64.sh -b -p /opt/anaconda3

echo "Reloading bashrc to pick up Anaconda changes"
source ~/.bashrc

echo "Updating Anaconda and installing IPython."
sudo /opt/anaconda3/bin/conda update conda
sudo /opt/anaconda3/bin/conda update ipython ipython-notebook ipython-qtconsole

# Make sure user can launch IPython without specifying the full path
sudo ln -s /opt/anaconda3/bin/ipython /usr/local/bin/ipython

echo "Installing Mach 30 dependencies"
sudo -H /opt/anaconda3/bin/pip install --upgrade pint

echo "Initializing IPython configuration directories."
#sudo /opt/anaconda3/bin/ipython profile create
sudo /opt/anaconda3/bin/ipython profile create --ipython-dir=/usr/local/share/ipython

echo "Downloading and installing IPython notebook extensions"
cd /usr/local/share/ipython/nbextensions
sudo wget https://github.com/ipython-contrib/IPython-notebook-extensions/archive/3.x.zip
sudo unzip 3.x.zip
sudo rm 3.x.zip

echo "Installing pandoc and some dependencies for PDF export."
sudo apt-get install pandoc texlive-latex-extra texlive-fonts-extra texlive-fonts-recommended 

echo "Finished installing MTK. Enjoy."
echo "If you have questions or want to get involved in the MTK project, see https://opendesignengine.net/projects/mtk"

