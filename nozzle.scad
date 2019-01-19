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

$fn=60;
EXIT=57.5;
LENGTH=100;
module blade(){
    difference(){
        union(){
            hull(){
                translate([0,20,5])
                    rotate([90,-10,0])
                        scale([1,1.5,1])
                            cylinder(r=3,h=41,center=true);
                translate([3,20,1])
                    rotate([90,0,0])
                        cylinder(r=1,h=41,center=true);
            }
            hull(){
                translate([0,20,5])
                    rotate([90,-10,0])
                        scale([1,1.5,1])
                            cylinder(r=3,h=41,center=true);
                translate([-2,20,15])
                    rotate([90,0,0])
                        cylinder(r=1,h=41,center=true);
            }
        };
        translate([0,20,11])
            rotate([90,-14,0])
                scale([1,5.2,1])
                    cylinder(r=2,h=42,center=true);
        cube([1000,1000,2],center=true);
        translate([501.8,0,0])
            cube([1000,1000,1000],center=true);
        translate([0,0,514])
            cube([1000,1000,1000],center=true);
    }
}
module nozzle(){
    difference(){
        union(){
            //main mount plate
            hull(){
                translate([0,5,5])
                    cube([110,90,10],center=true);
                translate([-20,-30,5])
                    cylinder(r=20,h=10,center=true);
                translate([20,-30,5])
                    cylinder(r=20,h=10,center=true);
            };
            //top mount hole tabs
            hull(){
                translate([47.5,46.5,12.5])
                    cube([15,7,25],center=true);
                translate([27.5,46.5,5])
                    cube([55,7,10],center=true);
            }
            hull(){
                translate([-47.5,46.5,12.5])
                    cube([15,7,25],center=true);
                translate([-27.5,46.5,5])
                    cube([55,7,10],center=true);
            }
            //main cone of nozzle
            translate([0,0,LENGTH/2])
                cylinder(r1=46, r2=EXIT/2+1.2, h=LENGTH, center=true);
            //nozzle to plate fairing
            translate([0,0,15])
                cylinder(r1=50, r2=42, h=10, center=true);
        };
        //main nozzle cavity
        translate([0,0,LENGTH/2+1])
            cylinder(r2=EXIT/2,r1=40,h=LENGTH+2,center=true);
        //top mount holes
        translate([47.5,47.5,17.5])
            rotate([90,0,0])
                cylinder(r=2.5,h=30,center=true);
        translate([-47.5,47.5,17.5])
            rotate([90,0,0])
                cylinder(r=2.5,h=30,center=true);
        //upper plate mount holes
        translate([45,35,0])
            cylinder(r=2.5,h=30,center=true);
        translate([-45,35,0])
            cylinder(r=2.5,h=30,center=true);
        //lower plate mount holes
        translate([48,-10,0])
            cylinder(r=2.5,h=30,center=true);
        translate([-48,-10,0])
            cylinder(r=2.5,h=30,center=true);
        //fairing spanner clearance for lower plate mount holes
        translate([56,-11.5,25])
            cylinder(r=15,h=30,center=true);
        translate([-56,-11.5,25])
            cylinder(r=15,h=30,center=true);
    };
    //stator blades
    translate([0,0,7.5])
        difference(){
            union(){
                //hub
                translate([0,0,-7.5])
                    scale([1,1,4])
                        sphere(r=7.5, center=true);
                //blades
                translate([0,0,-9])
                    rotate([0,0,0])
                        scale([1.5,1,1.5])
                            blade();
                translate([0,0,-9])
                    rotate([0,0,120])
                        scale([1.5,1,1.5])
                            blade();
                translate([0,0,-9])
                    rotate([0,0,240])
                        scale([1.5,1,1.5])
                            blade();
            };
            //hub cavity
            translate([0,0,-7.5])
                scale([1,1,3])
                    sphere(r=6, center=true);
            //base shaving
            translate([0,0,-27.5])
                cube([400,400,40],center=true);
        };
}
//uncomment this line to invert the nozzle for the reverse prop
//scale([-1,1,1])
nozzle();
