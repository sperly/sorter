//Engine mount

//change these to modify
p_rad=5;			//pin radius
b_rad=20;			//ball radius 
hole=16.9/2;		//hole inner radius
hole2=20.1/2;		//hole outer radius
res=200;			//hole resolution
angle=20;			//Angle between exits
angle2=34;

h_rad=b_rad+((b_rad*cos(angle))/tan(angle));
p_len=(b_rad*2)+2+2;

//Do not edit!
rotate([0,0,180])
difference() {
	union() {
		translate([-(2*b_rad), -b_rad*1.5, -b_rad]) 
			cube([b_rad*2, b_rad*3, b_rad*2]);
		translate([-11,-15,-(b_rad+2)]) 
			cylinder(h = p_len, r=p_rad, $fn=res);
		translate([-11,15,-(b_rad+2)]) 
			cylinder(h = p_len, r=p_rad, $fn=res);
	}
	sphere(r=b_rad+0.5, $fn=res);
	rotate([-90,0,90]) 
		cylinder(h=p_len, r=hole, $fn=res);
	rotate([-90,0,90]) 
		translate([0,0,20])
		cylinder(h=p_len, r=hole2, $fn=res);
	translate([-(2*b_rad)-25, -1,0 ]) 
		cube(b_rad*4,center = true);
	translate([0,0,-(b_rad+2)]) 
		cylinder(h = p_len, r=p_rad+0.1, $fn=res);
}
