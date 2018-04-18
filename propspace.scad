// SPDX-License-Identifier: CC-BY-SA-4.0
//
//Spacer to allow space for the propeller between the intake and the nozzle
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

THICKNESS=24;
$fn=360;
module propspace(){
    difference(){
        union(){
            hull(){
                translate([0,5,0])
                    cube([110,90,THICKNESS],center=true);
                translate([-20,-30,0])
                    cylinder(r=20,h=THICKNESS,center=true);
                translate([20,-30,0])
                    cylinder(r=20,h=THICKNESS,center=true);
            };
        }
        cylinder(r=40,h=30,center=true);
        translate([45,35,0])
            cylinder(r=2.5,h=30,center=true);
        translate([-45,35,0])
            cylinder(r=2.5,h=30,center=true);
        translate([48,-10,0])
            cylinder(r=2.5,h=30,center=true);
        translate([-48,-10,0])
            cylinder(r=2.5,h=30,center=true);
        translate([62.5,0,0])
            rotate([90,0,0])
                cylinder(r=2.5,h=130,center=true);
    };
}
propspace();