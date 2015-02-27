#!/bin/sh
# Author: Mach 30: Foundation for Space Development - http://mach30.org
# License: Apache 2.0

# Writen and tested on Ubuntu 14.04
# Must be run with superuser priveleges

echo "Installing the Mach 30 Mathematics Tool Kit (MTK)."
echo "This can take awhile. Please be patient."

echo "Running an initial update..."
apt-get update > /dev/null

echo "Installing the Kile LaTex IDE..."
apt-get install -y kile  > /dev/null

echo "Installing Sage..."
apt-add-repository -y ppa:aims/sagemath  > /dev/null
apt-get update  > /dev/null
apt-get install -y sagemath-upstream-binary  > /dev/null

echo "Configuring SageTex to work properly with Sage..."
#Configure sagetex to work properly with sage
cp -R /usr/lib/sagemath/local/share/texmf/tex/ `kpsewhich -var-value=TEXMFLOCAL`
texhash `kpsewhich -var-value=TEXMFLOCAL`

echo "Installing LaTex extras package..."
#Will get an error about makecmds.sty missing without this
apt-get install -y texlive-latex-extra  > /dev/null

echo "Installing Pygments package..."
#Pygments for Python syntax highlighting
sudo apt-get install python-pygments  > /dev/null

echo "Automating MTK Sage steps in Kile IDE..."
# Do Kile shell escape automatically
#sed -i '/^options=-interaction=nonstopmode/ s/^\(options=\)/\1-shell-escape /' $KILERC_LOCATION

# Download the complete MTK kilerc file
wget -P /tmp --user-agent=Mozilla --content-disposition -E -c http://opendesignengine.net/dmsf_files/479?download=

# Find the existing kilerc file for the user and rename it
KILERC_LOCATION="$(find /home/$(who am i | awk '{print $1}') -name kilerc)"
mv $KILERC_LOCATION $KILERC_LOCATION.orig
mv /tmp/kilerc $KILERC_LOCATION
chown $(who am i | awk '{print $1}').$(who am i | awk '{print $1}') $KILERC_LOCATION

echo "Adding Pint for units handling..."
# Add Pint for units handling
sage --python -m easy_install pint  > /dev/null

echo "Finished installing MTK. Enjoy."
