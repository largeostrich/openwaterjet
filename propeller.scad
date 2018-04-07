// SPDX-License-Identifier: CC-BY-SA-4.0
//
//Experimental propeller
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

$fn=360;
PITCH=60;
BLADEPAIRS=3;
intersection(){
    union(){
        difference(){
            union(){
                //hub
                cylinder(r=7.5, h=10 ,center=true);
                //blades
                    for(i=[1:BLADEPAIRS]){
                        linear_extrude(height = 10, center = true, convexity = 100, twist = PITCH)
                            translate([0,0,4])
                                rotate([0,0,i*180/BLADEPAIRS])
                                    scale(v=[0.04,20])
                                        circle(r=50,center=true);
                    };
            };
            cylinder(r=2.5, h=25, center=true);
            translate([0,0,8])
                cylinder(r=7.1, h=12, center=true);
            translate([0,0,-8])
                cylinder(r=5, h=12, center=true, $fn=6);
        };
        difference(){
            cylinder(r=40.3, h=10, center=true);
            cylinder(r=39.9, h=12, center=true);
        };
    };
    cylinder(r=40.3, h=10, center=true);
};