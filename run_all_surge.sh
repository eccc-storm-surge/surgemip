#!/usr/bin/env bash

set -e -u 
export PYTHONPATH=$(pwd)/src:${PYTHONPATH}

# each variable TWL or surge should be evaluated under separate EXP_ID
export EXP_ID=SURGEMIP_SURGE

. config/${EXP_ID}.cfg


echo "merged loadprogs output is in: "
echo "${label_to_merged_loadprogs_outfile[@]}" | tr ' ' '\n'
rm -f ${label_to_merged_loadprogs_outfile[@]}

for y in $(seq ${y_beg} ${y_end}); do
    bash ./run_chunk.sh ${y}010100 ${y}123123
done


log_file="surge_validation_surge_${EXP_ID}.log"
echo "SURGE plotting logs in ${log_file}"
python -u src/surge_validation/experiments/surgemip/surge.py >& ${log_file}

