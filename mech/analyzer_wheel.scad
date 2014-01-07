//Engine mount

//change these to modify

//hole=16.9/2;		//hole inner radius
//hole2=20.1/2;	//hole outer radius

//hole=8.45;			//Max hole size
hole=5;				//Skittles
wheel_h=hole*2;		//Wheel thickness
wheel_rad=40;	//Wheel radius
p_rad=5;			//pin radius
 
res=200; 			//hole resolution
holes=8;
p_len=wheel_h+10;
angle=360/holes;


hole_rad=wheel_rad-5-hole;

tilt=20;

//Do not edit!
difference() {
	union() {
		cylinder(h = wheel_h, r=wheel_rad, $fn=res, center=true);
		translate([0,0,0]) 
			cylinder(h = p_len, r=p_rad, $fn=res, center=true);
	}
	for(i=[0:holes]) {
		hull() {rotate([-tilt,0,(angle*i)])
			translate([hole_rad,0,0])
			cylinder(h=wheel_h*2, r=hole, $fn=res, center=true);
		rotate([0,0,(angle*i)])
			translate([hole_rad,0,0])
			cylinder(h=wheel_h*2, r=hole, $fn=res,center=true);}
	}
}
