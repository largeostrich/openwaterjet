use <intake.scad>;
use <nozzle.scad>;
use <fairings.scad>;
use <motormount.scad>;
use <propspace.scad>;

$fn=72;
LENGTH=220;
THICKNESS=14;
EXIT=70;

module setup(){
    intersection(){
        body();
        cube([110,220,250],center=true);
    };
    translate([0,117,50])
        rotate([90,0,0])
            propspace();
    translate([0,124,50])
        rotate([-90,180,0])
            nozzle();
    translate([0,-110,50])
        rotate([0,0,180])
            motormount();
    translate([0,-200,50])
        rotate([90,0,0])
            cylinder(r=20,h=80,center=true);
    translate([0,-200,50])
        rotate([90,0,0])
            cylinder(r=26,h=50,center=true);
    fairing();
}
translate([55,0,0])
    setup();
translate([-54.99,0,0])
    scale([-1,1,1])
        setup();