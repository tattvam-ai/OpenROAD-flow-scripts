# Full adder RTL to GDS

cd flow
make synth  DESIGN_CONFIG=../custom_design/full_adder/config.mk 

This generates the following result files

1_1_yosys.v  1_synth.rtlil  1_synth.sdc  1_synth.v  clock_period.txt  mem.json
