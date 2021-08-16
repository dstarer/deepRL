#!/bin/bash

unset PYTHONPATH

if [ $CONDA_HOME ]; then
    echo "FOUND CONDA_HOME in your enviroment, and it is $CONDA_HOME"
else
    CONDA_HOME="$HOME/miniconda3"
    echo "Your CONDA_HOME is $CONDA_HOME"
fi

eval "$($CONDA_HOME/bin/conda shell.bash hook)"

export PATH=/usr/local/cuda/bin:${PATH}
export LD_LIBRARY_PATH=/usr/local/cuda/lib64:${LD_LIBRARY_PATH}

conda activate DRL
