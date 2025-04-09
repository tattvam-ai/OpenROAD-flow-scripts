export DESIGN_NICKNAME = full_adder
export DESIGN_NAME = full_adder
export PLATFORM    = sky130hd

export CUSTOM_DESIGN_HOME = $(FLOW_HOME)/../custom_design

export VERILOG_FILES = $(CUSTOM_DESIGN_HOME)/$(DESIGN_NICKNAME)/rtl/full_adder.sv

export SDC_FILE      = $(CUSTOM_DESIGN_HOME)/$(DESIGN_NICKNAME)/constraint.sdc

export CORE_UTILIZATION = 50