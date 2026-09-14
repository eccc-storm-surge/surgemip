#ord_soumet= -cpus 128 -cm 256G -t 21600 -jn surgemip-twl -mach ppp8

cd  ~/Python/surgemip
. ~/.profile_python3

script=${1:-./run_all_twl.sh}

${script}