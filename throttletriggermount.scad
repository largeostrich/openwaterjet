// SPDX-License-Identifier: CC-BY-SA-4.0
//
//Handgrip/Attachment for the throttle lever
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

difference(){
    union(){
        cylinder(r=12.7,h=100,center=true);
        translate([0,0,49.7])
            cylinder(r=13.1,h=0.6,center=true);
        translate([0,15,-45])
            rotate([0,90,0])
                cylinder(r=12.5,h=6,center=true);
        hull(){
            translate([0,0,-25])
                cylinder(r=12.7,h=50,center=true);
            translate([0,0,5])
                scale([1,1,2])
                    sphere(r=15,center=true);
        };
    };
    translate([0,18,-43])
        rotate([0,90,0])
            cylinder(r=4,h=7,center=true);
    translate([0,0,47.6])
        cylinder(r1=5,r2=10,h=10,center=true);
    translate([0,0,-100])
        cube([100,100,100],center=true);
    translate([0,0,-47.6])
        cylinder(r1=10,r2=5,h=10,center=true);
    cylinder(r=5,h=110,center=true);
};