// SPDX-License-Identifier: CC-BY-SA-4.0
//
//collection of 3d components to demonstrate how they fit together
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

use <intake.scad>;
use <nozzle.scad>;
use <fairings.scad>;
use <motormount.scad>;
use <propspace.scad>;
use <motorholecover.scad>;

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
    //propshaft
    translate([0,-60,50])
        rotate([90,0,0])
            cylinder(r=2.5,h=380,center=true);
    translate([0,0,50])
        rotate([90,0,0])
            cylinder(r=5,h=225,center=true);
    //motors
    translate([0,-200,50])
        rotate([90,0,0])
            cylinder(r=20,h=80,center=true);
    translate([0,-200,50])
        rotate([90,0,0])
            cylinder(r=23.5,h=50,center=true);
    fairing();
    translate([0,-245,30])
        rotate([0,180,0])
            cover();
}
translate([55,0,0])
    setup();
translate([-54.99,0,0])
    scale([-1,1,1])
        setup();