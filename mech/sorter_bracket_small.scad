b_rad=20;			//ball radius 
p_rad=5;			//pin radius
res=200;			//hole resolution

difference() {
	union() {
		translate([0,0,-(b_rad+1)])
			cube([b_rad*3,b_rad*3,2], center=true);
	}
	translate([0,0,-b_rad])
		cylinder(r=p_rad, 5, center=true, $fn=res);
	translate([-11,15,-b_rad])
		cylinder(r=p_rad, 5, center=true, $fn=res);
	translate([11,15,-b_rad])
		cylinder(r=p_rad, 5, center=true, $fn=res);
	translate([-11,-15,-b_rad])
		cylinder(r=p_rad, 5, center=true, $fn=res);
	translate([11,-15,-b_rad])
		cylinder(r=p_rad, 5, center=true, $fn=res);
}