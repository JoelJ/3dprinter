G21 ; metric values
G90 ; absolute positioning
M82 ; set extruder to absolute mode
M107 ; start with the fan off
M140 S{material_bed_temperature_layer_0} ; Set bed temperature (no wait)
G28 X Y F6000 ; move X/Y to min endstops
G28 Z F1200 ; move Z to min endstops ; raise the nozzle
G28 X Y F6000 ; move X/Y to min endstops
M190 S{material_bed_temperature_layer_0} ; wait for bed temperature to reach target
M104 S{material_print_temperature_layer_0} T0 ; set extruder temperature (no wait)
G29 ; auto-leveling
G28 X Y F6000 ; move X/Y to min endstops, may disable bed leveling
M420 S1 ; enable bed leveling compensation
M109 S{material_print_temperature_layer_0} T0 ; set extruder temperature and wait
M300 P200 ; beep to indicate that the temp is reached
G1 Z15 F1200 ; raise to have room
G92 E0 ; zero the extruded length
G1 F140 E30 ; extrude 2mm of feed stock
G4 S2 ; Wait for 2 seconds
G92 E0 ; zero the extruded length
M117 Printing from Cura...; message
