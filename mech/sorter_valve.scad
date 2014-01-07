//Engine mount

//change these to modify
p_rad=5;			//pin radius
b_rad=20;			//ball radius 
hole=16.9/2;		//hole diam
res=200;			//hole resolution
angle=20;			//Angle between exits

h_rad=b_rad+((b_rad*cos(angle))/tan(angle));
p_len=(b_rad*2)+10+2;

//Do not edit!
difference() {
	union() {
		sphere(r=b_rad, $fn=res);
		translate([0,0,-(b_rad+2)]) 
			cylinder(h = p_len, r=p_rad, $fn=res);
	}
	translate([b_rad,h_rad,0]) 
		rotate_extrude(convexity = h_rad, $fn = res)	
		translate([h_rad, 0, 0])
		circle(r = hole, $fn = res);
	translate([b_rad,-h_rad,0])
		rotate_extrude(convexity = h_rad, $fn = res*2)
		translate([h_rad, 0, 0])
		circle(r = hole, $fn = res);
}
