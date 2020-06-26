//Pistol grip handle

//locating shoe and foot
include <./slide-locating.scad>;
//Necks and caps, Xavan, this is CC BY 4.0, from https://www.thingiverse.com/thing:1654620
include <./Necks_and_Caps/files/NecksCaps.scad>


module pistolGripHandleOnly(){
    difference(){
        //Base cylinder
        cylinder(140,25,25,true);
        //Sides of grip
        translate ([0,-25,0]){
            cube([50,12.5,140],true);
        }
        translate ([0,25,0]){
            cube([50,12.5,140],true);
        }
        //Finger recesses
        translate ([35,0,11]){
            rotate([90,0,0]) cylinder(50,15,15,true);
        }
        translate ([35,0,33.5]){
            rotate([90,0,0]) cylinder(50,15,15,true);
        }
        translate ([35,0,-11.5]){
            rotate([90,0,0]) cylinder(50,15,15,true);
        }
        translate ([35,0,-34]){
            rotate([90,0,0]) cylinder(50,15,15,true);
        }
        //Hollow it out
        difference(){ 
            cylinder(137.5,20,20,true); //leave a base
            translate ([22,0,0]){ //behind finger grips
                cube([10,50,140],true);
            }
            translate ([0,-20,0]){ //sides of hole
                cube([50,10,140],true);
            }
            translate ([0,20,0]){
                cube([50,10,140],true);
            }
        }
        cylinder(140,16.5,16.5,true); //make hole for neck and cap
    }
}

module pistolGripHandle(){

    //angle the top
    difference(){
        pistolGripHandleOnly();
        translate([0,0,69.6]) rotate([0,-15,0]) cube([65,60,15],true);
        //Make cable access
        translate([0,0,63]) rotate([0,-15,0]) cube([60,12.5,15],true);
    }
    
    //close off the end
    translate([0,0,60.5]) rotate([0,-15,0]){
        difference(){ 
            cylinder(2.5,25,25,true);
            //Sides of grip
            translate ([0,-25,0]){
                cube([50,12.5,15],true);
            }
            translate ([0,25,0]){
                cube([50,12.5,15],true);
            }            
            //Make cable access
            cube([50,12.5,15],true);
        }
    }
    
    //place the shoe
    translate([20,20,67]) rotate([0,15,180])locatingShoe();
    
    //Place the screw thread for the cap at the base
    translate([0,0,-70]) rotate([180,0,0]) N38mm3start ();
    
}


pistolGripHandle();
