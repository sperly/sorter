//Engine mount

//change these to modify
p_rad=5;			//pin radius
b_rad=15;			//ball radius 
hole=16.9/2;		//hole inner radius
hole2=20.1/2;		//hole outer radius
res=200; 			//hole resolution
angle=25;			//Angle between exits
angle2=38;

h_rad=b_rad+((b_rad*cos(angle))/tan(angle));
p_len=(b_rad*2)+2+2;

//Do not edit!
difference() {
	union() {
		translate([-(2*b_rad), -b_rad*1.5, -b_rad]) 
			cube([b_rad*2, b_rad*3, b_rad*2]);
		translate([-9,-10,-(b_rad+2)]) 
			cylinder(h = p_len, r=p_rad, $fn=res);
		translate([-9,10,-(b_rad+2)]) 
			cylinder(h = p_len, r=p_rad, $fn=res);
		
	}
	sphere(r=b_rad+0.5, $fn=res);
	rotate([-90,0,90-angle2]) 
		cylinder(h=p_len, r=hole, $fn=res);
	rotate([-90,0,90+angle2]) 
		cylinder(h=p_len, r=hole, $fn=res);
	rotate([-90,0,90-angle2]) 
		translate([0,0,14])
		cylinder(h=p_len, r=hole2, $fn=res);
	rotate([-90,0,90+angle2]) 
		translate([0,0,14])
		cylinder(h=p_len, r=hole2, $fn=res);
	rotate([0,0,-angle2])
		translate([-(2*b_rad)-13, 5,0 ]) 
		cube(b_rad*3.1,center = true);
	rotate([0,0,angle2])
		translate([-(2*b_rad)-13, -5,0 ]) 
		cube(b_rad*3.1,center = true);
	translate([-(2*b_rad)-13, -5,0 ]) 
		cube(b_rad*2.1,center = true);
	translate([0,0,-(b_rad+2)]) 
		cylinder(h = p_len, r=p_rad+0.1, $fn=res);
}
