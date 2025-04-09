# Full adder RTL to GDS

## Synthesis

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

```sh
yosys -s synth_vis.tcl
```

At the end of this stage, you're expected to have a synthesized netlist in 1_synth.v.
The synthesized design can be visualized in dot viewer using the above script.

## Floorplan

This involves 4 stages

2_1 Floorplan (define area, IOs)
    ↓
2_2 Macro Placement (place large IP blocks)
    ↓
2_3 Tapcell Insertion (connect substrate to power)
    ↓
2_4 PDN Generation (create metal VDD/VSS grids)

The following files are generated

2_1_floorplan.odb          2_2_floorplan_macro.odb    2_3_floorplan_tapcell.odb  2_floorplan.odb
2_1_floorplan.sdc          2_2_floorplan_macro.tcl    2_4_floorplan_pdn.odb      2_floorplan.sdc

