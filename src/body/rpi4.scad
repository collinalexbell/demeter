$fn = 20;

difference() {
	cube([85, 56, 2]);

	translate([3.5, 3.5, -5]) {
		cylinder(d=2.7, h=10);
		translate([0,49,0]) {
			cylinder(d=2.7, h=10);
			translate([58, 0, 0]) cylinder(d=2.7, h=10);
		}
		translate([58, 0, 0]) cylinder(d=2.7, h=10);
	}
}
