#!/bin/bash

set -e

unset PYTHONPATH

CONDA_HOME="$HOME/miniconda3"

CONDA_EXEC=$CONDA_HOME/bin/conda


if ! [ -f $CONDA_EXEC ]; then
    echo "---------------------"
    echo "Downloading miniconda"
    echo "---------------------"

    echo $CONDA_EXEC

    wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

    # This for CI. run `bash Miniconda3-latest-Linux-x86_64.sh` on your local machine for more customized options
    bash Miniconda3-latest-Linux-x86_64.sh -b 
fi

eval "$($CONDA_EXEC shell.bash hook)"

conda config --set always_yes yes

venv=DRL
VENV_PATH=$CONDA_HOME/envs/$venv

if ! [ -d $VENV_PATH ]; then
    
    echo "----------------------------"
    echo "creating virtual environment"
    echo "----------------------------"
    
    conda create --name $venv python=3.6
fi

conda activate $venv

echo "-----------------------"
echo "Installing requirements"
echo "-----------------------"

pip install -r requirements.txt

echo "-----------"
echo "ALL Done..."
echo "-----------"

printf "\n\nPlease run:source set_env.sh to enable environment \n\n"

