#!/bin/sh
# Author: Mach 30: Foundation for Space Development - http://mach30.org
# License: Apache 2.0

# Writen and tested on Ubuntu 14.04
# Must be run with superuser priveleges

apt-get update

#Kile IDE
apt-get install -y kile

#Sage
apt-add-repository -y ppa:aims/sagemath
apt-get update
apt-get install -y sagemath-upstream-binary

#Configure sagetex to work properly with sage
cp -R /usr/lib/sagemath/local/share/texmf/tex/ `kpsewhich -var-value=TEXMFLOCAL`
texhash `kpsewhich -var-value=TEXMFLOCAL`

#Will get an error about makecmds.sty missing without this
apt-get install -y texlive-latex-extra
