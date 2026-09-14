#ord_soumet= -cpus 128 -cm 256G -t 21600 -jn surgemip-twl -mach ppp8


# to pass the script path use: ord_soumet ./scripts/submit.sh -args ./run_all_surge.sh

cd  ~/Python/surgemip
. ~/.profile_python3

script=${1:-./run_all_twl.sh}

${script}