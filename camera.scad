//Raspberry Pi handheld camera master file

//locating shoe and foot
include <./slide-locating.scad>;
//Camera front plate
include <./camera mounting plate.scad>;

//Draw a camera mounting plate
piHQcameraMountingPlate();

//Add a frame base plate and sides
longFaceLength = sqrt((67*67)*2);
difference() {
    difference() {
        cube([62,67,69.5],false); 
	    translate([2.5,0,0]){
            cube([57,64.5,69.5],false);
        }
    }
    translate([0,0,2.5]){
        rotate([45,0,0]) cube([62,longFaceLength,67],false);
    }
}
//Add a couple of flat bits for the Pi to locate on
translate([0,1.25,0])rotate([45,0,0]) cube([10,longFaceLength-2.5,2.5],false);
translate([52,1.25,0]) rotate([45,0,0]) cube([10,longFaceLength-2.5,2.5],false);

//add a locating foot to the bottom
translate([31,69.5,54.5]) color("green") rotate([90,-90,0]) locatingFoot();

//add a locating foot to the RHS
//translate([-5,32,40]) color("green") rotate([0,90,0]) locatingFoot();
translate([-2.5,45,17.5]) color("green") rotate([0,-90,180]) locatingFoot();

//add a locating foot to the LHS
translate([64.5,45,17.5]) color("green") rotate([90,-90,-90]) locatingFoot();