#!/bin/bash
# dsim_eng1.sh
# Bash script to simulate design with Metrics DSim on eng-1

# Set up environment
set -e

# Analyze and Elaborate design
dsim -top work.top -genimage image -uvm 1.2 ../uvm_hello_world.sv

# Simulate design
dsim -image image -uvm 1.2 +UVM_NO_RELNOTES +UVM_TESTNAME=my_test
