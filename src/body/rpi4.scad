$fn = 20;

boardDepth = 56;
boardWidth = 85;
UsbAndEthernetOffset = boardWidth - 15;

BaseBoard();
translate([7, -1.5, baseBoardHeight]) UsbC();
translate([3.5 + 7.7 + 14.8 - HdmiMiniWidth/2, -1.5, baseBoardHeight]) HdmiMini();
translate([3.5 + 7.7 + 14.8 + 13.5 - HdmiMiniWidth/2, -1.5, baseBoardHeight]) HdmiMini();

//SD
translate([-2,boardDepth/2-sdDepth/2, -sdHeight]) SdCard();

//Camera Ribbon Cable
translate([3.5 + 7.7 + 14.8 + 13.5 + 7- RibbonHeaderWidth/2, 0, baseBoardHeight]) RibbonHeader();

translate([3.5 + 7.7 + 14.8 + 13.5 + 7 + 7.5 - HeadphoneJackWidth/2, 0, baseBoardHeight]) HeadphoneJack();
translate([UsbAndEthernetOffset, 9 - UsbADepth/2, baseBoardHeight]) UsbA();
translate([UsbAndEthernetOffset, 27 - UsbADepth/2, baseBoardHeight]) UsbA();
translate([UsbAndEthernetOffset, 45.7 - EthernetDepth/2, baseBoardHeight]) Ethernet();

//Diplay Ribbon Cable
translate([3,HoleOffset+24.5-RibbonHeaderDepth/2, baseBoardHeight]) RibbonHeader();

//GPIO
translate([7, 49, baseBoardHeight]) GPIO();
translate([0, 24.5 + GPIODepth, baseBoardHeight + GPIOHeight]) SenseHat();

baseBoardHeight = 1.5;
RPiColor = "Green";
HoleOffset = 3.5;
module BaseBoard() {
	color( c = RPiColor) {
		difference() { 
			cube([85, 56, baseBoardHeight]);
			Holes(HoleOffset, HoleOffset);
		}
	}
}

HoleDistance = 58;
module Holes(bottomLeftX, bottomLeftY) {
	translate([bottomLeftX, bottomLeftY, 0]) {
		Hole(0,0,0);
		Hole(HoleDistance, 49, 0);
		Hole(0, 49, 0);
		Hole(HoleDistance, 0, 0);
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

RibbonHeaderWidth = 1.5;
RibbonHeaderDepth = 20;
RibbonHeaderColor = "Cornsilk";
module RibbonHeader() {
	color(RibbonHeaderColor) {
		cube([RibbonHeaderWidth, RibbonHeaderDepth, 5.5-baseBoardHeight]);
	}
}

HeadphoneJackWidth = 4.5;
module HeadphoneJack() {
	cube([HeadphoneJackWidth, 12, 6-baseBoardHeight]);
	translate([HeadphoneJackWidth/2, 0, HeadphoneJackWidth/2]) rotate([90,0,0]) cylinder(d=HeadphoneJackWidth, h=2);
}

UsbADepth = 15;
module UsbA() {
	cube([20, UsbADepth, 16-baseBoardHeight]);
}

EthernetDepth = 16;
EthernetWidth = 20;
module Ethernet() {
	cube([EthernetWidth, EthernetDepth, 13.5-baseBoardHeight]);
}

GPIOHeight = 8.5;
GPIODepth = 6;
module GPIO() {
	cube([HoleDistance - 3.5*2, GPIODepth, GPIOHeight]);
}

module SenseHat() {
	cube([UsbAndEthernetOffset-2, 24.5, baseBoardHeight]);
}

sdDepth = 8;
sdHeight = 1;
module SdCard() {
	cube([10, sdDepth, 1]);
}
