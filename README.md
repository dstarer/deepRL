# Deep Reinforcement Learning



### 4 Step Environment Setup

1. clone this repo to local

   ```
   git@github.com:dstarer/deepRL.git
   ```

2.  install miniconda and install dependency

   ```bash
   bash setup.sh
   ```

   a. It will download miniconda and install it's to your `$HOME/miniconda` if there is no one. And if you already have one miniconda, you can `export CONDA_HOME` before executing this script. 

   b. When miniconda is installed, it will create one virtual environment DRL. And install the related dependencies in `requirements.txt`. The default python version is 3.6 and we use pytorch==1.2.

3. activate environment

   ```bash
   source set_env.sh
   ```

   for next time, you only need to execute this command to activate environment.

4. Run examples

   ```bash
   python a2c_cartpole_app/a2c_cartpole_training.py
   ```


