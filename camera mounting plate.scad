//This is a flat mounting plate for a Raspberry Pi HQ camera

module piHQcameraMountingPlate(){
    //Camera plate
    difference() {
        cube([62,67,2.5],false); 
        translate([13,18,0]){
            cube([36,36,2.5],false);
        }
        translate([20,54,0]){
            rotate([45,0,0]) cube([22,4,3.5],false); //extra cable space
        }
    }

    //Recess for camera
    difference() {
        translate([10.5,15.5,2.5]){
            cube([41,41,6],false);
        }
        translate([13,18,2.5]){
            cube([36,38.5,3.5],false); //slot for cable
        }
    }



    //screw pillars
    module cameraScrewPillar(angle=0){
        rotate(angle){
            difference() {
                union(){
                    cylinder(6,2.75,2.75,false);
                    translate([-3,-3,0]) linear_extrude(6) polygon(points=[[5,5],[5,0],[0,0],[0,5]]); 
                }
                cylinder(6,1,1,false);
            }
        } 
    }

    translate([16,21,0]){
        cameraScrewPillar(0);
    }
    translate([46,21,0]){
        cameraScrewPillar(90);
    }
    translate([46,51,0]){
        cameraScrewPillar(180);
    }
    translate([16,51,0]){
        cameraScrewPillar(270);
    }
}
