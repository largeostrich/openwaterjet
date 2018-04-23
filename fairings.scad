// SPDX-License-Identifier: CC-BY-SA-4.0
//
//Fairings to fair from the mid intake to the nozzle to the underside of the board
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
LENGTH=220;
module fairing(){
    hull(){
        translate([60,150,24.5])
            scale([1,4,1])
                cylinder(r=4, h=1, center=true);
        translate([72,160,-34.5])
            scale([1,4,1])
                cylinder(r=2, h=1, center=true);
        translate([61,186.6,24.5])
            scale([1,1,1])
                cylinder(r=0.4, h=1, center=true);
        translate([73,186.6,-34.5])
            scale([1,1,1])
                cylinder(r=0.4, h=1, center=true);
    };
    difference(){
        intersection(){
            hull(){
                translate([0,40,27.5])
                    scale([1.4,0.7,1])
                        cylinder(r=55,h=5, center=true);
                translate([0,210,27.5])
                    scale([1.4,4.6,1])
                        cylinder(r=55,h=5, center=true);
                translate([0,LENGTH/2-0.01,25])
                    rotate([0,90,0])
                        scale([1,3,1])
                            cylinder(r=15,h=110, center=true);
                translate([0,LENGTH/2+24,25])
                    rotate([0,90,0])
                        scale([1,2,1])
                            cylinder(r=15,h=110, center=true);
                translate([0,LENGTH/2-0.01,45])
                    rotate([0,90,0])
                        scale([1,3,1])
                            cylinder(r=15,h=220, center=true);
                translate([0,LENGTH/2+24,45])
                    rotate([0,90,0])
                        scale([1,2,1])
                            cylinder(r=15,h=220, center=true);
                difference(){
                    hull(){
                        translate([20,110,20])
                            rotate([0,0,0])
                                scale([1,3,1])
                                    sphere(r=20, center=true);
                        translate([0,90,20])
                            rotate([0,0,0])
                                scale([1,3,1])
                                    sphere(r=20, center=true);
                        translate([20,134,20])
                            rotate([0,0,0])
                                scale([1,2,1])
                                    sphere(r=20, center=true);
                        translate([-20,134,20])
                            rotate([0,0,0])
                                scale([1,2,1])
                                    sphere(r=20, center=true);
                        translate([-20,110,20])
                            rotate([0,0,0])
                                scale([1,3,1])
                                    sphere(r=20, center=true);
                    };
                    translate([0,0,100])
                        cube([200,400,160],center=true);
                };
            };
            translate([0,0,12.5])
                cube([210,2*187,25],center=true);
        };
        translate([-55,0,0])
            cube([220,600,500],center=true);
    };
}
//scale by -1 to flip this for opposite side
//scale([-1,1,1])
    rotate([0,180,0])
        fairing();