## Generated SDC file "n_bit_counter.sdc"

## Copyright (C) 2016  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel MegaCore Function License Agreement, or other 
## applicable license agreement, including, without limitation, 
## that your use is for the sole purpose of programming logic 
## devices manufactured by Intel and sold by Intel or its 
## authorized distributors.  Please refer to the applicable 
## agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

## DATE    "Fri Nov 10 00:46:22 2023"

##
## DEVICE  "5CSEMA5F31C6"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {KEYO} -period 4.000 -waveform { 0.000 2.000 } [get_ports {KEYO}]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {KEYO}] -rise_to [get_clocks {KEYO}] -setup 0.170  
set_clock_uncertainty -rise_from [get_clocks {KEYO}] -rise_to [get_clocks {KEYO}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {KEYO}] -fall_to [get_clocks {KEYO}] -setup 0.170  
set_clock_uncertainty -rise_from [get_clocks {KEYO}] -fall_to [get_clocks {KEYO}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {KEYO}] -rise_to [get_clocks {KEYO}] -setup 0.170  
set_clock_uncertainty -fall_from [get_clocks {KEYO}] -rise_to [get_clocks {KEYO}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {KEYO}] -fall_to [get_clocks {KEYO}] -setup 0.170  
set_clock_uncertainty -fall_from [get_clocks {KEYO}] -fall_to [get_clocks {KEYO}] -hold 0.060  


#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************
