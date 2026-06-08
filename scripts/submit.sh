#ord_soumet= -cpus 256 -t 10800 -jn surgemip-twl -mach moira

cd  ~/Python/surgemip
. ~/.profile_python3

script=${1:-./run_all_twl.sh}

${script}