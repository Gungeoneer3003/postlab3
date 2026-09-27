## Basys 3 pin assignments for ComplexBitComparator
## SW0-SW7 form A[7:0], with SW0 as A[0] (least-significant bit)
## SW8-SW15 form B[7:0], with SW8 as B[0] (least-significant bit)

## A input switches
set_property PACKAGE_PIN V17 [get_ports {A_0}]
set_property IOSTANDARD LVCMOS33 [get_ports {A_0}]
set_property PACKAGE_PIN V16 [get_ports {A_1}]
set_property IOSTANDARD LVCMOS33 [get_ports {A_1}]
set_property PACKAGE_PIN W16 [get_ports {A_2}]
set_property IOSTANDARD LVCMOS33 [get_ports {A_2}]
set_property PACKAGE_PIN W17 [get_ports {A_3}]
set_property IOSTANDARD LVCMOS33 [get_ports {A_3}]
set_property PACKAGE_PIN W15 [get_ports {A_4}]
set_property IOSTANDARD LVCMOS33 [get_ports {A_4}]
set_property PACKAGE_PIN V15 [get_ports {A_5}]
set_property IOSTANDARD LVCMOS33 [get_ports {A_5}]
set_property PACKAGE_PIN W14 [get_ports {A_6}]
set_property IOSTANDARD LVCMOS33 [get_ports {A_6}]
set_property PACKAGE_PIN W13 [get_ports {A_7}]
set_property IOSTANDARD LVCMOS33 [get_ports {A_7}]

## B input switches
set_property PACKAGE_PIN V2 [get_ports {B_0}]
set_property IOSTANDARD LVCMOS33 [get_ports {B_0}]
set_property PACKAGE_PIN T3 [get_ports {B_1}]
set_property IOSTANDARD LVCMOS33 [get_ports {B_1}]
set_property PACKAGE_PIN T2 [get_ports {B_2}]
set_property IOSTANDARD LVCMOS33 [get_ports {B_2}]
set_property PACKAGE_PIN R3 [get_ports {B_3}]
set_property IOSTANDARD LVCMOS33 [get_ports {B_3}]
set_property PACKAGE_PIN W2 [get_ports {B_4}]
set_property IOSTANDARD LVCMOS33 [get_ports {B_4}]
set_property PACKAGE_PIN U1 [get_ports {B_5}]
set_property IOSTANDARD LVCMOS33 [get_ports {B_5}]
set_property PACKAGE_PIN T1 [get_ports {B_6}]
set_property IOSTANDARD LVCMOS33 [get_ports {B_6}]
set_property PACKAGE_PIN R2 [get_ports {B_7}]
set_property IOSTANDARD LVCMOS33 [get_ports {B_7}]

## Comparator result LEDs
set_property PACKAGE_PIN U16 [get_ports AequalsB]
set_property IOSTANDARD LVCMOS33 [get_ports AequalsB]
set_property PACKAGE_PIN E19 [get_ports AgreaterthanB]
set_property IOSTANDARD LVCMOS33 [get_ports AgreaterthanB]
set_property PACKAGE_PIN U19 [get_ports AlessthanB]
set_property IOSTANDARD LVCMOS33 [get_ports AlessthanB]
