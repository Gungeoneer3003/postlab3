# Postlab 3: 8-bit Comparators

A Vivado 2020.2 SystemVerilog project that implements and tests two unsigned
8-bit comparators.

## Project contents
- `OneBitComparator.sv`: single-bit comparator building block
- `ComplexBitComparator.sv`: hierarchical 8-bit comparator
- `EightBitComparator.sv`: direct 8-bit comparator
- `Postlab3SIM.sv`: simulation testbench for both implementations
- `Basys3_constraints.xdc`: Basys 3 pin constraints
- `postlab3.xpr`: Vivado project file

## Open and simulate
1. Clone this repository
2. Open `postlab3.xpr` in Vivado 2020.2 or a compatible version
3. Select **Run Simulation > Run Behavioral Simulation**

Vivado regenerates ignored cache, run, and simulation directories locally.
They are deliberately excluded from version control.

## Hardware note
The project targets the Digilent Basys 3 FPGA part
`xc7a35ticpg236-1L`. Review the port names in
`Basys3_constraints.xdc` before generating a bitstream: its flat `A_0` through
`A_7` and `B_0` through `B_7` ports must match the selected top module.
