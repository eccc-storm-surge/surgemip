
set -e -u

t1=${1?"the first argument for the start of the period (YYYYMMHH) required"}
t2=${2?"the second argument for the end of the period (YYYYMMHH) required"}

echo ""
echo "=========================== working on chunk ${t1} .. ${t2} ============================================"



. config/${EXP_ID}.cfg



loadprogs_cfg_tpl=config/loadprogs.tpl.cfg

wrk_dir=data/loadprogs/${EXP_ID}/loadprogs_${t1}_${t2}




mkdir -p ${wrk_dir}


# run loadprogs

for label in "${!label_to_mod_path[@]}"; do

    echo "Processing ${label} from ${label_to_mod_path[${label}]}"
    loadprogs_cfg=${wrk_dir}/loadprogs_${label}.cfg

    log_file=${wrk_dir}/loadprogs_${label}.log
    current_out_dir=${wrk_dir}/output/data_for_scoring_${label}_${t1}_${t2}

    echo "loadprogs logs for the current chunk in: ${log_file}"
    mkdir -p ${current_out_dir}

    sed -e 's#@LABEL@#'${label}'#' \
        -e 's#@DATESTART_MOD@#'${t1}'#' \
        -e 's#@DATEEND_MOD@#'${t2}'#' \
        -e 's#@MODEL_PATH@#'${label_to_mod_path[${label}]}'#' \
        -e 's#@DETIDE_MOD@#'${label_to_detidemod[${label}]}'#' \
        -e 's#@DATESTART_OBS@#'${t1}'#' \
        -e 's#@DATEEND_OBS@#'${t2}'#' \
        -e 's#@DETIDE_OBS@#'${label_to_detideobs[${label}]}'#' \
        -e 's#@MOD_NOMVAR@#'${label_to_nomvar[${label}]}'#' \
        -e 's#@OUT_DIR@#'${current_out_dir}'#' \
        ${loadprogs_cfg_tpl} > ${loadprogs_cfg}

    python src/loadprogs/experiments/run_experiments_base.py  --cfg  ${loadprogs_cfg} >& ${log_file}

    # copy results to the merged file
    cat ${current_out_dir}/surge_${label}.dat >> ${label_to_merged_loadprogs_outfile[${label}]}

done
