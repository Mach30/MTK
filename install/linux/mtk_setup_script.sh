#!/usr/bin/env bash
# Author: Mach 30: Foundation for Space Development - http://mach30.org
# License: Apache 2.0

# Writen and tested on Ubuntu 14.04
# Must be run with superuser priveleges (sudo -H)
# IPython setup based on http://bikulov.org/blog/2014/05/14/install-up-to-date-scientific-environment-in-ubuntu-14-dot-04-with-python-3-dot-4/

echo "Installing the Mach 30 Mathematics Tool Kit (MTK)."
echo "This can take awhile. Please be patient."

echo "Running an initial update..."
apt-get update > /dev/null

# Install python development packages and g++
apt-get install -y python3-dev g++

# Install dependencies for scipy
apt-get install -y libblas-dev liblapack-dev gfortran

# Install dependencies for matplotlib
apt-get install -y libfreetype6-dev libpng-dev

# IPython notebook has bug:
# https://bugs.launchpad.net/ubuntu/+source/python3.4/+bug/1290847
python3 -m venv --clear --without-pip venv/ipython-notebook

# Activate virtual env and install pip
source venv/ipython-notebook/bin/activate

# Set up pip
wget https://bootstrap.pypa.io/get-pip.py
python get-pip.py
rm get-pip.py

# TODO - There's a bug with installing scipy: ImportError: No module named 'numpy'; Failed building wheel for scipy
# http://stackoverflow.com/questions/24353267/build-wheel-for-a-package-like-scipy-lacking-dependency-declaration
# Install scientific packages
pip install numpy sympy matplotlib scipy pandas

# Install ipython notebook and dependencies
pip install ipython pyzmq jinja2 pygments bokeh

# Install latest dev scikit-learn and build it
pip install cython https://github.com/scikit-learn/scikit-learn/archive/master.zip

# install prettyplotlib by Olga Botvinnik for beauty plots
pip install brewer2mpl prettyplotlib

# Deactivate virtual env
deactivate

echo "Adding Pint for units handling..."
# TODO - Add Pint for units handling

echo "Finished installing MTK. Enjoy."
echo "If you have questions or want to get involved in the MTK project, see https://opendesignengine.net/projects/mtk"
