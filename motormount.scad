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