#!/usr/bin/env bash
# Author: Mach 30: Foundation for Space Development - http://mach30.org
# License: Apache 2.0
# Writen and tested on Ubuntu 14.04
# This script will ask for a sudo password


JUPYTER_CONFIG_DIR=/usr/local/etc/jupyter/
JUPYTER_DATA_DIR=/usr/local/share/jupyter/
export JUPYTER_CONFIG_DIR
export JUPYTER_DATA_DIR


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
sudo /opt/anaconda3/bin/ipython profile create --ipython-dir=$JUPYTER_DATA_DIR
# the templates directory is needed for installing nbextensions
sudo mkdir /usr/local/share/jupyter/templates

echo "Downloading and installing IPython notebook extensions"
cd /tmp/nbextensions
sudo wget https://github.com/ipython-contrib/IPython-notebook-extensions/archive/master.zip
sudo unzip master.zip
cd IPython-notebook-extensions-master/
/opt/anaconda3/bin/ipython setup.py install
sudo mv ~/.local/share/jupyter $JUPYTER_DATA_DIR
sudo mv ~/.jupyter $JUPYTER_CONFIG_DIR
sudo rm -rf IPython-notebook-extensions-master/
sudo rm master.zip

echo "Installing pandoc and some dependencies for PDF export."
sudo apt-get install pandoc texlive-latex-extra texlive-fonts-extra texlive-fonts-recommended 

echo "Finished installing MTK. Enjoy."
echo "If you have questions or want to get involved in the MTK project, see https://opendesignengine.net/projects/mtk"

