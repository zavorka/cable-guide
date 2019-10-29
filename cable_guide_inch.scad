$fn = 72;

scale([25.4, 25.4, 25.4]) {
difference() {
	cube([5/8, 19/8, 13/4]);
	translate([0, 1/4, 1/4]) cube([5/8, 15/8, 11/4]);
	translate([0, 3/4, 3]) cube([5/8, 5/32, 1/2]);
}
difference() {
	cube([7/4, 5/8, 3/16]);
	translate([7/8, 5/16, 3/32]) {
		cylinder(h=3/16, d=1/4, center=true);
		translate([5/8, 0, 0]) cylinder(h=3/16, d=1/4,center=true);
	}
}
}


scale([25.4/32, 25.4/32, 25.4/32]) translate([64, 0, 0]) {
difference() {
	cube([20, 76, 104]);
	translate([0, 8, 8]) cube([20, 60, 88]);
	translate([0, 24, 96]) cube([20, 5, 16]);
}
difference() {
	cube([56, 20, 6]);
	translate([28, 10, 3]) {
		cylinder(h=6, d=8, center=true);
		translate([20, 0, 0]) cylinder(h=6, d=8,center=true);
	}
}
}
