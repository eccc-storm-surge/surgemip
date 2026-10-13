#ord_soumet= -cpus 128 -cm 256G -t 21600 -jn pyscript -mach ppp8

# arg1 = path to working directory
# arg2 = path to python script to be run

cd ${1}

. r.load.dot /fs/ssm/eccc/cmd/cmds/apps/pixi/latest

pixi run --offline python -u ${2}