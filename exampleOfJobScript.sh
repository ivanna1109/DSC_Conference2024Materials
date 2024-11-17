#!/bin/bash
# set the number of nodes and processes per node

#SBATCH --job-name=gSage_tr
# set the number of nodes and processes per node
#SBATCH --partition=cuda
#SBATCH --nodes=1
#SBATCH --gres=gpu:1
#SBATCH --nodelist=n06
source /opt/miniconda3.10/bin/activate

# set max wallclock time
#SBATCH --time=02:00:00
#SBATCH --output=gSage_%j.log
#SBATCH --error=gSage_%j.err



python new_training/gSage_train.py