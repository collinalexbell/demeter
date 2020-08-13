$fn = 20;

BaseBoard();
translate([7, -1.5, baseBoardHeight]) UsbC();
translate([3.5 + 7.7 + 14.8 - HdmiMiniWidth/2, -1.5, baseBoardHeight]) HdmiMini();
translate([3.5 + 7.7 + 14.8 + 13.5 - HdmiMiniWidth/2, -1.5, baseBoardHeight]) HdmiMini();
translate([70, 9 - UsbADepth/2, baseBoardHeight]) UsbA();
translate([70, 27 - UsbADepth/2, baseBoardHeight]) UsbA();

baseBoardHeight = 1.5;
RPiColor = "Green";
module BaseBoard() {
	color( c = RPiColor) {
		difference() { 
			cube([85, 56, baseBoardHeight]);
			Holes(3.5, 3.5);
		}
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

HdmiMiniWidth = 5;
module HdmiMini() {
	cube([5, 6, 3.0-baseBoardHeight]);
}

UsbADepth = 15;
module UsbA() {
	cube([20, UsbADepth, 16-baseBoardHeight]);
}
