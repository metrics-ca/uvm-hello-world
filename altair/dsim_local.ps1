# dsim_local.ps1
# PowerShell script to simulate design with Altair® DSim™ on local machine

# Analyze and Elaborate design
dsim -top work.top -genimage image -uvm 1.2 ../uvm_hello_world.sv

# Simulate design
dsim -image image -uvm 1.2 +UVM_NO_RELNOTES +UVM_TESTNAME=my_test
