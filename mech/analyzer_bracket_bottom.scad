//change these to modify

//hole=16.9/2;		//hole inner radius
//hole2=20.1/2;	//hole outer radius

//hole=8.45;			//Max hole size
hole=5;				//Skittles
wheel_h=(hole*2)+1;		//Wheel thickness
wheel_rad=40.5;	//Wheel radius
p_rad=5;			//pin radius
p_len=40;

b_thick=3;
 
res=200; 			//hole resolution

hole_rad=wheel_rad-5.5-hole;

//Do not edit!
difference() {
	union() {
		translate([wheel_rad*0.75,0,0])
			cube([wheel_rad*1.5,wheel_rad*2,wheel_h+(2*b_thick)],center=true);
		translate([0,0,-(b_thick+wheel_h)/2]) 
			cylinder(h = b_thick, r=wheel_rad, $fn=res, center=true);
		translate([0,0,(b_thick+wheel_h)/2]) 
			cylinder(h = b_thick, r=wheel_rad, $fn=res, center=true);
		translate([hole_rad,0,11]) 
			cylinder(h = b_thick*2, r=hole+2, $fn=res, center=true);
		rotate([0,0,0])
			translate([0,wheel_rad-5-(16.9/2),-10]) 
			cylinder(h = b_thick*2+4, r=22/2, $fn=res, center=true);
	}
translate([0,0,0]) 
			cylinder(h = p_len, r=p_rad, $fn=res, center=true);
cylinder(h = wheel_h, r=wheel_rad, $fn=res, center=true);

		translate([hole_rad,0,10]) 
			cylinder(h = b_thick*2+4, r=hole, $fn=res, center=true);
		rotate([0,0,-45])
			translate([0,hole_rad,10]) 
			cylinder(h = b_thick*2+4, r=hole, $fn=res, center=true);
		rotate([0,0,0])
			translate([0,wheel_rad-5-(16.9/2),-10]) 
			cylinder(h = b_thick*2+4, r=16.9/2, $fn=res, center=true);
		rotate([0,0,0])
			translate([0,wheel_rad-5-(16.9/2),-13]) 
			cylinder(h = b_thick*2+4, r=20/2, $fn=res, center=true);

		translate([0,0,16.4])
			cube([150,150,22], center=true);
}
