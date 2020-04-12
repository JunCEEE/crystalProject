#!/bin/bash
#SBATCH --job-name=bench36
##SBATCH --partition=allgpu
#SBATCH --partition=exfel-spb
#SBATCH --nodes=1
#SBATCH --mem=360gb
#SBATCH --time=08:00:00 
#SBATCH --output=log.bench36   # Standard output and error log

export LD_PRELOAD=""                 # useful on max-display nodes, harmless on others
source /etc/profile.d/modules.sh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/gpfs/exfel/data/user/juncheng/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/gpfs/exfel/data/user/juncheng/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/gpfs/exfel/data/user/juncheng/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/gpfs/exfel/data/user/juncheng/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

source $HOME/.zshrc
which conda
module list
conda activate simex
which python


python bench36.py | tee ../../results/processed_data/bench_time_36.txt
