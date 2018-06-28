// SPDX-License-Identifier: CC-BY-SA-4.0
//
//Mounting bracket for the motor
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

//this piece is the highest stressed piece of all: use appropriate print settings to reflect this

module motormount(){
        difference(){
            union(){
                translate([0,-10,2.5])
                    cube([105,50,5], center=true);
                hull(){
                    translate([0,7.5,31])
                        cube([50,25,4],center=true);
                    translate([0,0,31])
                        cylinder(r=17.5,h=4,center=true);
                };
                hull(){
                    translate([0,7.5,16.5])
                        cube([50,25,33],center=true);
                    translate([0,0,16.5])
                        cylinder(r=17.5,h=33,center=true);
                };
            }
            //base
            translate([0,20,2.5])
                cube([205,10,205], center=true);
            //bolt holes
            //to motor
            translate([11,6,25])
                cylinder(r=1.5,h=20, center=true);
            translate([-11,6,25])
                cylinder(r=1.5,h=20, center=true);
            translate([11,-6,25])
                cylinder(r=1.5,h=20, center=true);
            translate([-11,-6,25])
                cylinder(r=1.5,h=20, center=true);
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
                translate([10,0,17])
                    cylinder(r=10,h=24, center=true);
                translate([-10,0,17])
                    cylinder(r=10,h=24, center=true);
                translate([10,-20,17])
                    cylinder(r=10,h=24, center=true);
                translate([-10,-20,17])
                    cylinder(r=10,h=24, center=true);
                translate([0,10,17])
                    cylinder(r=10,h=24, center=true);
            };
            translate([0,0,30])
                cylinder(r=6,h=20, center=true);
            hull(){
                translate([0,0,0])
                    cylinder(r=11,h=20, center=true);
                translate([0,-5.5,0])
                    cube([11,11,20], center=true);
            };
        };
}
rotate([270,0,0])
    motormount();
