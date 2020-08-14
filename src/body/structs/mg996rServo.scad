$fn = 30;

module mg996rServo() {
	flange_width = 53.6;
	flange_height_offset = 26.9;
	flange_height = 2;
	main_width = 40.3;
	depth = 20;
	height = 37.5;

		cube([main_width, depth, height]);
		translate([main_width/2-flange_width/2,0,flange_height_offset]) {
			difference() {
				cube([flange_width, depth, flange_height]);
				translate([0,depth/2,-2.5]) {
					translate([1.5,-5,0]) cylinder(d=4, h=5);
					translate([1.5,5,0]) cylinder(d=4, h=5);
					translate([flange_width - 1.5,-5,0]) cylinder(d=4, h=5);
					translate([flange_width - 1.5,5,0]) cylinder(d=4, h=5);
				}
			}
		}
	translate([34.3, depth/2, height]) color("orange") cylinder(r=2, h=4);
}

mg996rServo();
