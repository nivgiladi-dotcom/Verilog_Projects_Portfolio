iverilog -o full_adder.vvp full_adder.v full_adder_tb.v
vvp full_adder.vvp
gtkwave full_adder_test.vcd
del full_adder.vvp
del full_adder_test.vcd