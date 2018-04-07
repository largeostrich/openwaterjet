// SPDX-License-Identifier: CC-BY-SA-4.0
//
//Water cooled battery box
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

$fn=24;
difference(){
    union(){
        cube([154,78,56],center=true);
        
    };
    translate([0,17,5])
        cube([144,24,56],center=true);
    translate([0,-17,5])
        cube([144,24,56],center=true);
    translate([0,51,5])
        cube([144,24,56],center=true);
    translate([0,-51,5])
        cube([144,24,56],center=true);
    translate([0,85,5])
        cube([144,24,56],center=true);
    translate([0,-85,5])
        cube([144,24,56],center=true);
    for(i=[1:7]){
        for(j=[1:7]){
            translate([0,136-34*i,32-8*j])
                rotate([0,90,0])
                    cylinder(r=3,h=200,center=true);     
        };
    };
};