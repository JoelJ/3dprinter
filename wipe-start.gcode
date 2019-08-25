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
G28 X0 Y0 Z0 ; home X, Y and Z axis end-stops
G0 X0 Y0 F9000 ; Go to front
G0 Z0.15 ; Drop to bed
G92 E0 ; zero the extruded length
G1 X40 E25 F500 ; Extrude 25mm of filament in a 4cm line
G92 E0 ; zero the extruded length
G1 E-1 F500 ; Retract a little
G1 X80 F4000 ; Quickly wipe away from the filament line
G1 Z0.3 ; Raise and begin printing.
M117 Printing from Cura...; message
