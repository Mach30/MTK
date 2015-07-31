#!/usr/bin/env bash
# Author: Mach 30: Foundation for Space Development - http://mach30.org
# License: Apache 2.0

# Writen and tested on Ubuntu 14.04
# This script will ask for a sudo password
# IPython setup based on http://bikulov.org/blog/2014/05/14/install-up-to-date-scientific-environment-in-ubuntu-14-dot-04-with-python-3-dot-4/

echo "Installing the Mach 30 Mathematics Tool Kit (MTK)."
echo "This can take awhile. Please be patient."

echo "Running an initial update..."
apt-get update > /dev/null

# Gain superuser status
sudo

# Install python development packages and g++
apt-get install -y python3-dev g++

# Install dependencies for scipy
apt-get install -y libblas-dev liblapack-dev gfortran

# Install dependencies for matplotlib
apt-get install -y libfreetype6-dev libpng-dev

# Drop super user status
sudo -K

# IPython notebook has bug:
# https://bugs.launchpad.net/ubuntu/+source/python3.4/+bug/1290847
python3 -m venv --clear --without-pip venv/ipython-notebook

# Activate virtual env and install pip
#source venv/ipython-notebook/bin/activate

# Set up pip
wget https://bootstrap.pypa.io/get-pip.py
python get-pip.py
rm get-pip.py

# Install IPython
pip3 install "ipython[all]"

# Install scientific packages
pip install numpy sympy matplotlib scipy pandas

# Install ipython notebook and dependencies
pip install pyzmq jinja2 pygments bokeh jsonschema

# TODO: Determine if we need this
# Install latest dev scikit-learn and build it
#pip install cython https://github.com/scikit-learn/scikit-learn/archive/master.zip

# Install prettyplotlib by Olga Botvinnik for beauty plots
pip install brewer2mpl prettyplotlib

# Install Mach 30 dependencies
pip install pint

# Deactivate virtual env
#deactivate

echo "Finished installing MTK. Enjoy."
echo "If you have questions or want to get involved in the MTK project, see https://opendesignengine.net/projects/mtk"
