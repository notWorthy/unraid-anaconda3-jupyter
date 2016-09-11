#!/bin/bash
echo "Installing jupyter"
/opt/conda/bin/conda install jupyter -y --quiet
echo "Setting JUPYTER_CONFIG_DIR"
JUPYTER_CONFIG_DIR="/opt/jupyterprofile"
export JUPYTER_CONFIG_DIR
echo "Downloading startup script"
wget -O opt/jupyterprofile/jupyter_notebook_config.py https://github.com/damianolombardo/unraid-anaconda3-jupyter/raw/master/jupyter_notebook_config.py
echo "Starting notebook server"
/opt/conda/bin/jupyter notebook

