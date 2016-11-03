#!/usr/bin/env bash
# Author: Mach 30: Foundation for Space Development - http://mach30.org
# License: Apache 2.0
# Writen and tested on Ubuntu 14.04
# This script will ask for a sudo password

function sep {
  echo "---------------------------------------------------------------"
}

function sep_echo {
  echo ""
  sep
  echo $1
  sep
  echo ""
}

bindir=/opt/anaconda3/bin


echo "Installing the Mach 30 Mathematics Tool Kit (MTK)."
sep
echo "This can take awhile. Please be patient."
sep
sleep 5

sep_echo "Switching to Downloads directory."
cd ~/Downloads

sep_echo "Downloading Anaconda installer."
wget https://repo.continuum.io/archive/Anaconda3-4.2.0-Linux-x86_64.sh

sep_echo "Installing Anaconda..."
sudo bash Anaconda3-4.2.0-Linux-x86_64.sh -b -p /opt/anaconda3

sep_echo "Reloading bashrc to pick up Anaconda changes"
source ~/.bashrc

sep_echo "Updating Anaconda"
sudo ${bindir}/conda update -y conda

sep_echo "Creating MTK conda environment"
sudo ${bindir}/conda create -y -n mtk

sep_echo "Installing python library dependencies"
sudo bash -c "source ${bindir}/activate mtk ; pip install --no-cache-dir --upgrade pint" 

sep_echo "Installing IPython notebook extensions"
sudo bash -c "source ${bindir}/activate mtk ; conda install -c conda-forge jupyter_nbextensions_configurator -y"
pymarkdown='jupyter_contrib_nbextensions-master/src/jupyter_contrib_nbextensions/nbextensions/python-markdown/main'
sudo bash -c "source ${bindir}/activate mtk ; jupyter nbextension enable ${pymarkdown}"

sep_echo "Installing pandoc and dependencies for PDF export."
sudo apt-get install pandoc texlive-latex-extra texlive-fonts-extra texlive-fonts-recommended 

sep_echo "Adding MTK startup script to /usr/local/bin"
read -d '' script << EOF
#!/usr/bin/env bash
echo 'Opening MTK environment'
source ${bindir}/activate mtk
echo 'Starting jupyter notebook'
jupyter notebook .
echo 'Deactivating MTK environment'
source ${bindir}/deactivate
EOF
echo "$script" | sudo dd of=/usr/local/bin/mtk status=none
sudo chmod 777 /usr/local/bin/mtk

echo ''
sep
sep
echo "Finished installing MTK. Enjoy."
echo "If you have questions or want to get involved in the MTK project, see https://opendesignengine.net/projects/mtk"

