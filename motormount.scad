rotate([270,0,0])
    difference(){
        union(){
            translate([0,-10,5])
                cube([110,50,10], center=true);
            translate([0,0,46])
                cube([50,30,8], center=true);
            translate([0,7.5,30])
                cube([50,15,40], center=true);
        }
        //bolt holes
        //to intake
        translate([45,5,0])
            cylinder(r=2.5,h=200, center=true);
        translate([-45,5,0])
            cylinder(r=2.5,h=200, center=true);
        translate([45,-25,0])
            cylinder(r=2.5,h=200, center=true);
        translate([-45,-25,0])
            cylinder(r=2.5,h=200, center=true);
        //tube holes
        translate([30,5,0])
            cylinder(r=3,h=200, center=true);
        translate([-30,5,0])
            cylinder(r=3,h=200, center=true);
        translate([30,-15,0])
            cylinder(r=3,h=200, center=true);
        translate([-30,-15,0])
            cylinder(r=3,h=200, center=true);
        //shaft holes
        cylinder(r=5,h=200, center=true);
        hull(){
            translate([7,0,0])
                cylinder(r=10,h=84, center=true);
            translate([-7,0,0])
                cylinder(r=10,h=84, center=true);
        };
    };