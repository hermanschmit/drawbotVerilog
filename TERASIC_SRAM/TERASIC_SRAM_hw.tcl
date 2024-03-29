# TCL File Generated by Component Editor 13.0
# Thu Jun 27 14:25:53 CST 2013
# DO NOT MODIFY


# 
# TERASIC_SRAM "TERASIC_SRAM" v1.0
#  2013.06.27.14:25:53
# 
# 

# 
# request TCL package from ACDS 13.0
# 
package require -exact qsys 13.0


# 
# module TERASIC_SRAM
# 
set_module_property DESCRIPTION ""
set_module_property NAME TERASIC_SRAM
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP "Terasic Technologies Inc./C5G"
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME TERASIC_SRAM
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL AUTO
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false


# 
# file sets
# 
add_fileset quartus_synth QUARTUS_SYNTH "" "Quartus Synthesis"
set_fileset_property quartus_synth TOP_LEVEL TERASIC_SRAM
set_fileset_property quartus_synth ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file TERASIC_SRAM.v VERILOG PATH TERASIC_SRAM.v TOP_LEVEL_FILE


# 
# parameters
# 
add_parameter DATA_BITS INTEGER 16
set_parameter_property DATA_BITS DEFAULT_VALUE 16
set_parameter_property DATA_BITS DISPLAY_NAME DATA_BITS
set_parameter_property DATA_BITS TYPE INTEGER
set_parameter_property DATA_BITS UNITS None
set_parameter_property DATA_BITS ALLOWED_RANGES -2147483648:2147483647
set_parameter_property DATA_BITS AFFECTS_GENERATION false
set_parameter_property DATA_BITS HDL_PARAMETER true
add_parameter ADDR_BITS INTEGER 20
set_parameter_property ADDR_BITS DEFAULT_VALUE 20
set_parameter_property ADDR_BITS DISPLAY_NAME ADDR_BITS
set_parameter_property ADDR_BITS TYPE INTEGER
set_parameter_property ADDR_BITS UNITS None
set_parameter_property ADDR_BITS ALLOWED_RANGES -2147483648:2147483647
set_parameter_property ADDR_BITS AFFECTS_GENERATION false
set_parameter_property ADDR_BITS HDL_PARAMETER true


# 
# display items
# 


# 
# connection point clock_reset
# 
add_interface clock_reset clock end
set_interface_property clock_reset clockRate 0
set_interface_property clock_reset ENABLED true
set_interface_property clock_reset EXPORT_OF ""
set_interface_property clock_reset PORT_NAME_MAP ""
set_interface_property clock_reset SVD_ADDRESS_GROUP ""

add_interface_port clock_reset clk clk Input 1


# 
# connection point clock_reset_reset
# 
add_interface clock_reset_reset reset end
set_interface_property clock_reset_reset associatedClock clock_reset
set_interface_property clock_reset_reset synchronousEdges DEASSERT
set_interface_property clock_reset_reset ENABLED true
set_interface_property clock_reset_reset EXPORT_OF ""
set_interface_property clock_reset_reset PORT_NAME_MAP ""
set_interface_property clock_reset_reset SVD_ADDRESS_GROUP ""

add_interface_port clock_reset_reset reset_n reset_n Input 1


# 
# connection point avalon_slave
# 
add_interface avalon_slave avalon end
set_interface_property avalon_slave addressUnits WORDS
set_interface_property avalon_slave associatedClock clock_reset
set_interface_property avalon_slave associatedReset clock_reset_reset
set_interface_property avalon_slave bitsPerSymbol 8
set_interface_property avalon_slave burstOnBurstBoundariesOnly false
set_interface_property avalon_slave burstcountUnits WORDS
set_interface_property avalon_slave explicitAddressSpan 0
set_interface_property avalon_slave holdTime 0
set_interface_property avalon_slave isMemoryDevice true
set_interface_property avalon_slave linewrapBursts false
set_interface_property avalon_slave maximumPendingReadTransactions 0
set_interface_property avalon_slave readLatency 0
set_interface_property avalon_slave readWaitTime 1
set_interface_property avalon_slave setupTime 0
set_interface_property avalon_slave timingUnits Cycles
set_interface_property avalon_slave writeWaitTime 0
set_interface_property avalon_slave ENABLED true
set_interface_property avalon_slave EXPORT_OF ""
set_interface_property avalon_slave PORT_NAME_MAP ""
set_interface_property avalon_slave SVD_ADDRESS_GROUP ""

add_interface_port avalon_slave s_chipselect_n chipselect_n Input 1
add_interface_port avalon_slave s_write_n write_n Input 1
add_interface_port avalon_slave s_address address Input ADDR_BITS
add_interface_port avalon_slave s_read_n read_n Input 1
add_interface_port avalon_slave s_writedata writedata Input DATA_BITS
add_interface_port avalon_slave s_readdata readdata Output DATA_BITS
add_interface_port avalon_slave s_byteenable_n byteenable_n Input DATA_BITS/8
set_interface_assignment avalon_slave embeddedsw.configuration.isFlash 0
set_interface_assignment avalon_slave embeddedsw.configuration.isMemoryDevice 1
set_interface_assignment avalon_slave embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon_slave embeddedsw.configuration.isPrintableDevice 0


# 
# connection point conduit_end
# 
add_interface conduit_end conduit end
set_interface_property conduit_end associatedClock clock_reset
set_interface_property conduit_end associatedReset clock_reset_reset
set_interface_property conduit_end ENABLED true
set_interface_property conduit_end EXPORT_OF ""
set_interface_property conduit_end PORT_NAME_MAP ""
set_interface_property conduit_end SVD_ADDRESS_GROUP ""

add_interface_port conduit_end SRAM_DQ export Bidir DATA_BITS
add_interface_port conduit_end SRAM_ADDR export Output ADDR_BITS
add_interface_port conduit_end SRAM_UB_n export Output 1
add_interface_port conduit_end SRAM_LB_n export Output 1
add_interface_port conduit_end SRAM_WE_n export Output 1
add_interface_port conduit_end SRAM_CE_n export Output 1
add_interface_port conduit_end SRAM_OE_n export Output 1

