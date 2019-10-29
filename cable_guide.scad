/*difference() {
translate([32.5, -3.5-4.8-6.3, 3.0]) import("/home/curly/Downloads/Cable_Guide_90deg_large.stl");
rotate([0, 0, 180])cube(100);
}*/
/* thickness 4.5, 6.3, 19.0 */
/* gap 3.5 */
include <MCAD/units.scad>

$fn = 72;

in = 25.4;
/* pitch = 5/8 * in; */
/* margin = 1/4 * in; */

nut_cutout = 3/8 * in;
plate = 4.6;
eps = 0.1;
thickness = 6.3;
width = 60;
height = 81;
gap = 3.5;
gap_offset = 19.0;

pitch = 20.0;
margin = (pitch - nut_cutout);
ru = 2*pitch + 2*margin;

difference() {
	cube([pitch, width, height]);
	translate([-eps/2, thickness, thickness]) cube([pitch+eps, width-2*thickness, height-2*thickness]);
	translate([-eps/2, gap_offset, height-thickness-eps/2]) cube([pitch+eps, gap, thickness+eps]);
}
difference() {
	cube([ru, pitch, plate]);
	translate([pitch + margin, pitch/2, plate/2]) union() {
		cylinder(h=plate+eps, d=M6, center=true);
		%cube([13.72, 13.72, plate+eps], center=true);
		translate([pitch, 0, 0]) { 
			cylinder(h=plate+eps, d=M6,center=true);
			%cube([13.72, 13.72, plate+eps], center=true);
		}
		
	}
}