// Slide locating foot and shoe components for handles
//vHeight = total height of assembly

module locatingShoe(vHeight=5){
    difference() { //shoe
        linear_extrude(height=vHeight) polygon(points=[[5,2.5],[5,37.5],[35,32.5],[35,7.5]]); 
	    linear_extrude(height=2.6) polygon(points=[[5,7.5],[5,32.5],[35,27.5],[35,12.5]]);
	    translate([0,0,2.6]) linear_extrude(height=2.4) polygon(points=[[5,10],[5,30],[35,25],[35,15]]);
    }
}

module locatingFoot(vHeight=5){
	linear_extrude(height=2.5) polygon(points=[[5,7.5],[5,32.5],[35,27.5],[35,12.5]]);
	translate([0,0,2.5]) linear_extrude(height=2.5) polygon(points=[[5,10],[5,30],[35,25],[35,15]]);
}

//Test shoe and foot for printing
//cube([40,40,1.0]);
//translate([0,0,1]) locatingShoe();
//translate([0,0,6]) mirror([1,0,0]) rotate([0,180,0]) locatingFoot();
