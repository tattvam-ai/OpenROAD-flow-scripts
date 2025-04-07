# Full adder RTL to GDS

cd flow
make synth  DESIGN_CONFIG=../custom_design/full_adder/config.mk 

This generates the following result files

1_1_yosys.v  1_synth.rtlil  1_synth.sdc  1_synth.v  clock_period.txt  mem.json

The following yosys script can be run from synthesis results folder to visualize the design and run synthesis.


```tcl
# Read design
read_verilog 1_synth.v

# Map flip-flops
dfflibmap -liberty ../../../../platforms/sky130hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib

# Map combinatorial logic
abc -liberty ../../../../platforms/sky130hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib


# Visualize
show
```

The script is in scripts/synth_vis.tcl

