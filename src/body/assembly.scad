use <structs/rpi4.scad>
use <structs/mg996rServo.scad>

translate([0,0,65]) rotate([180,0,0]) mg996rServo();
translate([0,20,70]) rotate([0,-90,180]) mg996rServo();
RPi4();
