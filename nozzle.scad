// SPDX-License-Identifier: CC-BY-SA-4.0
//
//Jet nozzle
//
//Copyright (C) 2018 Peter Bennett <thelargeostrich@gmail.com>
//
//This design is licensed under a Creative Commons Attribution-ShareAlike
//4.0 International license.
//
//You are free to:
//  Share — copy and redistribute the material in any medium or format
//  Adapt — remix, transform, and build upon the material
//          for any purpose, even commercially.
//
//Under the following terms:
//
//  Attribution — You must give appropriate credit, provide a link to
//                the license, and indicate if changes were made. You
//                may do so in any reasonable manner, but not in any
//                way that suggests the licensor endorses you or your use.
//  ShareAlike  — If you remix, transform, or build upon the material,
//                you must distribute your contributions under the same
//                license as the original.
//  No additional restrictions — You may not apply legal terms or
//                technological measures that legally restrict others
//                from doing anything the license permits.

//This nozzle is designed for use with the standard 2317.76 propeller. To use with the 2317.76RH propeller, this design must be reflected.

$fn=180;
EXIT=57.5;
LENGTH=100;
module nozzle(){
    difference(){
        union(){
            hull(){
                translate([0,5,5])
                    cube([110,90,10],center=true);
                translate([-20,-30,5])
                    cylinder(r=20,h=10,center=true);
                translate([20,-30,5])
                    cylinder(r=20,h=10,center=true);
            };
            translate([47.5,47.5,12.5])
                cube([15,5,25],center=true);
            translate([-47.5,47.5,12.5])
                cube([15,5,25],center=true);
            translate([0,0,LENGTH/2])
                cylinder(r1=46, r2=EXIT/2+1.2, h=LENGTH, center=true);
            translate([0,0,15])
                cylinder(r1=50, r2=43, h=10, center=true);
        };
        translate([0,0,LENGTH/2+1])
        cylinder(r2=EXIT/2,r1=40,h=LENGTH+2,center=true);
        translate([47.5,47.5,17.5])
            rotate([90,0,0])
                cylinder(r=2.5,h=30,center=true);
        translate([-47.5,47.5,17.5])
            rotate([90,0,0])
                cylinder(r=2.5,h=30,center=true);
        translate([45,35,0])
            cylinder(r=2.5,h=30,center=true);
        translate([-45,35,0])
            cylinder(r=2.5,h=30,center=true);
        translate([48,-10,0])
            cylinder(r=2.5,h=30,center=true);
        translate([-48,-10,0])
            cylinder(r=2.5,h=30,center=true);
        translate([48,-10,15])
            cylinder(r=6,h=10,center=true);
        translate([-48,-10,15])
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
                rotate([0,0,30])
                    linear_extrude(height = 15, center = true, convexity = 100, twist = -8)
                        translate([0,0,4])
                            scale(v=[0.3,24])
                                circle(d=3.75,center=true);
                rotate([0,0,90])
                    linear_extrude(height = 15, center = true, convexity = 100, twist = -8)
                        translate([0,0,4])
                            scale(v=[0.3,24])
                                circle(d=3.75,center=true);
                rotate([0,0,150])
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
}
//uncomment this line to invert the nozzle for the reverse prop
//scale([-1,1,1])
    nozzle();