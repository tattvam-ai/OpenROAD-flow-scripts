
#TODO: Make this customizable for all the designs

read_verilog ../results/sky130hd/full_adder/base/1_synth.v

dfflibmap -liberty ../platforms/sky130hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib

abc -liberty ../platforms/sky130hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib

show