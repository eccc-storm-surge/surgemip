#!/usr/bin/env bash

set -e -u 
export PYTHONPATH=$(pwd)/src:${PYTHONPATH}

# each variable TWL or surge should be evaluated under separate EXP_ID
export EXP_ID=SURGEMIP_SURGE_DAILYMAX


recompute_dailymax=0

if (( recompute_dailymax == 1)); then
    echo "recomputing daily max surge and twl matches"
    echo "Cwd: $(pwd)"
    python -u src/loadprogs/tools/surgemip_prep_daily_max_mod_obs_matches.py
fi


log_file="surge_validation_surge_${EXP_ID}.log"
echo "SURGE plotting logs in ${log_file}"
python -u src/surge_validation/experiments/surgemip/surge_daily_max.py >& ${log_file}

