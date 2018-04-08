// SPDX-License-Identifier: CC-BY-SA-4.0
//
//Housing for cable-actuated slide potentiometer
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
module throttlecontrol(){
    difference(){
        union(){
            translate([0,-10,0])
                cube([18,140,10],center=true);
            translate([0,60,9])
                cube([18,20,28],center=true);
            translate([0,0,-3.5])
                cube([38,120,3],center=true);
            translate([0,-75,6])
                cylinder(r=5,h=22,center=true);
        };
        translate([0,10,2])
            cube([8,46,8],center=true);
        translate([10,28,-6])
            cube([28,10,8],center=true);
        translate([10,-8,-6])
            cube([28,10,8],center=true);
        translate([0,-75,8])
            cylinder(r=2.5,h=22,center=true);
        translate([0,65,12])
            rotate([90,0,0])
                cylinder(r=2.8,h=22,center=true);
        translate([0,55,12])
            rotate([90,0,0])
                cylinder(r=1.5,h=22,center=true);
    };
}
throttlecontrol();