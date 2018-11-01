$fn=72;
module motor(){
    translate([0,0,0])
        rotate([90,0,0])
            cylinder(r=20,h=74,center=true);
    difference(){        
        union(){
        translate([0,21,23])
            cube([6,6,12],center=true);
        translate([23,-21,0])
            cube([12,6,6],center=true);
        translate([0,0,0])
            rotate([90,0,0])
                cylinder(r=23,h=52,center=true);
        }
        translate([0,0,0])
            rotate([90,0,0])
                cylinder(r=21.5,h=50,center=true);
        translate([0,21,23])
            cylinder(r=1.5,h=10,center=true);
        translate([0,16,26.5])
            rotate([90,0,0])
                cylinder(r=1.5,h=10,center=true);
        translate([23,-21,0])
            rotate([0,90,0])
            cylinder(r=1.5,h=10,center=true);
        translate([26.5,-26,0])
            rotate([90,0,0])
                cylinder(r=1.5,h=10,center=true);
    }
}


motor();