$fn = 20;

BaseBoard();
translate([7, -1.5, baseBoardHeight]) UsbC();

baseBoardHeight = 1.5;
module BaseBoard() {
	difference() {
		cube([85, 56, baseBoardHeight]);
		Holes(3.5, 3.5);
	}
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

module UsbC() {
	cube([7, 6, 3.2-baseBoardHeight]);
}
