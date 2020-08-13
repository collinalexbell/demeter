$fn = 20;

difference() {
	cube([85, 56, 2]);
	Holes(3.5, 3.5);
}

module Holes(bottomLeftX, bottomLeftY) {
	translate([bottomLeftX, bottomLeftY, 0]) {
		Hole(0,0,0);
		Hole(58, 49, 0);
		Hole(0, 49, 0);
		Hole(58, 0, 0);
	}
}

module Hole(x, y, z) {
	translate([x, y, z-5]) {
		cylinder(d=2.7, h=10);
	}
};
