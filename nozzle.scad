$fn=72;
EXIT=80;
difference(){
    union(){
        hull(){
            translate([0,7.5,5])
                cube([110,85,10],center=true);
            translate([-20,-30,5])
                cylinder(r=20,h=10,center=true);
            translate([20,-30,5])
                cylinder(r=20,h=10,center=true);
        };
        translate([0,0,50])
            cylinder(r1=46, r2=EXIT/2+1, h=100, center=true);
        translate([0,0,15])
            cylinder(r1=50, r2=43, h=10, center=true);
    };
    translate([0,0,51])
    cylinder(r2=EXIT/2,r1=40,h=102,center=true);
    translate([45,35,0])
        cylinder(r=2.5,h=30,center=true);
    translate([-45,35,0])
        cylinder(r=2.5,h=30,center=true);
    translate([48,-15,0])
        cylinder(r=2.5,h=30,center=true);
    translate([-48,-15,0])
        cylinder(r=2.5,h=30,center=true);
    translate([48,-15,15])
        cylinder(r=6,h=10,center=true);
    translate([-48,-15,15])
        cylinder(r=6,h=10,center=true);
};
translate([0,0,7.5])
    difference(){
        union(){
            //hub
            translate([0,0,-7.5])
                scale([1,1,3])
                    sphere(r=7.5, center=true);
            //blades
            linear_extrude(height = 15, center = true, convexity = 100, twist = -8)
                translate([0,0,4])
                    scale(v=[0.3,24])
                        circle(d=3.75,center=true);
            rotate([0,0,60])
                linear_extrude(height = 15, center = true, convexity = 100, twist = -8)
                    translate([0,0,4])
                        scale(v=[0.3,24])
                            circle(d=3.75,center=true);
            rotate([0,0,120])
                linear_extrude(height = 15, center = true, convexity = 100, twist = -8)
                    translate([0,0,4])
                        scale(v=[0.3,24])
                            circle(d=3.75,center=true);
        };
        translate([0,0,-7.5])
            scale([1,1,3])
                sphere(r=6, center=true);
        translate([0,0,-27.5])
            cube([400,400,40],center=true);
    };