$fn=360;
PITCH=60;
BLADEPAIRS=3;
intersection(){
    union(){
        difference(){
            union(){
                //hub
                cylinder(r=7.5, h=10 ,center=true);
                //blades
                    for(i=[1:BLADEPAIRS]){
                        linear_extrude(height = 10, center = true, convexity = 100, twist = PITCH)
                            translate([0,0,4])
                                rotate([0,0,i*180/BLADEPAIRS])
                                    scale(v=[0.04,20])
                                        circle(r=50,center=true);
                    };
            };
            cylinder(r=2.5, h=25, center=true);
            translate([0,0,8])
                cylinder(r=7.1, h=12, center=true);
            translate([0,0,-8])
                cylinder(r=5, h=12, center=true, $fn=6);
        };
        difference(){
            cylinder(r=40.3, h=10, center=true);
            cylinder(r=39.9, h=12, center=true);
        };
    };
    cylinder(r=40.3, h=10, center=true);
};