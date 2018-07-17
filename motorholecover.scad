// SPDX-License-Identifier: CC-BY-SA-4.0
//
//plate to cover holes which have to be cut to allow water jackets to fit
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
module cover(){
    difference(){
        hull(){
            translate([0,-12,-10])
                scale([5,7,2])
                    sphere(r=10,center=true);
            translate([12,20,-10])
                scale([0.01,8,2])
                    sphere(r=10,center=true);
            translate([-12,20,-10])
                scale([0.01,8,2])
                    sphere(r=10,center=true);
        };
        translate([0,0,-20])
            cube([600,600,50],center=true);
    };
}
cover();