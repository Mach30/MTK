#!/bin/sh
# Author: Mach 30: Foundation for Space Development - http://mach30.org
# License: Apache 2.0

# Writen and tested on Ubuntu 14.04
# Must be run with superuser priveleges

echo "Installing the Mach 30 Mathematics Tool Kit (MTK)."
echo "This can take awhile. Please be patient."

echo "Running an initial update..."
apt-get update > /dev/null

#TODO - This script is currently being re-written for IPython and Jupyter

echo "Adding Pint for units handling..."
# Add Pint for units handling
sage --python -m easy_install pint  > /dev/null

echo "Finished installing MTK. Enjoy."
echo "If you have questions or want to get involved in the MTK project, see https://opendesignengine.net/projects/mtk"
