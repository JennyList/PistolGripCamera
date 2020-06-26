// Slide locating foot and shoe components for handles
//vHeight = total height of assembly

module locatingShoe(vHeight=5){
    difference() { //shoe
        linear_extrude(height=vHeight) polygon(points=[[5,5],[5,35],[35,30],[35,10]]); 
	    linear_extrude(height=2.5) polygon(points=[[5,7.5],[5,32.5],[35,27.5],[35,12.5]]);
	    translate([0,0,2.5]) linear_extrude(height=2.5) polygon(points=[[5,10],[5,30],[35,25],[35,15]]);
    }
}

module locatingFoot(vHeight=5){
    difference() { //foot
        linear_extrude(height=vHeight) polygon(points=[[5,5],[5,35],[35,30],[35,10]]); 
	    locatingShoe();
    }
}
