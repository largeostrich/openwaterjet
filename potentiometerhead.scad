// SPDX-License-Identifier: CC-BY-SA-4.0
//
//slide potentiometer attachment
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

$fn=72;
module head (){
    difference(){
        union(){
            intersection(){
                cube([9,9,7], center=true);
                hull(){
                    translate([0,9,-2])
                        cylinder(r=5,h=20,center=true);
                    translate([0,-9,-2])
                        cylinder(r=3,h=20,center=true);
                };
            };
            hull(){
                translate([0,9,-2])
                    cylinder(r=5,h=3,center=true);
                translate([0,-9,-2])
                    cylinder(r=3,h=3,center=true);
            };
        };
        translate([0,0,2])
            cube([3,6,17], center=true);
        translate([0,9,-2])
            cylinder(r=2.5,h=3,center=true);
        translate([0,-9,-2])
            cylinder(r=2,h=3,center=true);
    };
}
head();