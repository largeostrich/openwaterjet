// SPDX-License-Identifier: CC-BY-SA-4.0
//
//Jet Intake
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

//half selection and rotation for printing at the bottom of this file

$fn=24;
LENGTH=220;
module toroid (){
    translate([0,LENGTH/2,50])
        rotate([90,0,0])
            scale([1,1,2])
                rotate_extrude(convexity = 10)
                    hull(){
                        translate([55,0,0])
                            circle(r = 15);
                        translate([85,30,0])
                            circle(r = 1);
                    }
}
module boundingbox (){
    hull(){
        translate([0,-LENGTH/2,57.5])
            rotate([90,0,0])
                cube([110,85,0.01], center=true);
        translate([0,LENGTH/2,50])
            rotate([90,0,0])
                cube([110,100,0.01], center=true);
    };
}
module cavity () {
    //main cavity
    hull(){
        difference(){
            translate([0,LENGTH/2,50])
                scale([1,3,1])
                    sphere(r=40, center=true);
            translate([0,LENGTH,50])
                cube([100,LENGTH,100], center=true);
        };
        translate([0,-142.5,-0.5])
            rotate([0,0,0])
                scale([1,(60)/80,1])
                    cylinder(r=40, h=1, center=true);
        translate([0,60,-0.5])
            rotate([0,0,0])
                scale([1.3,(55)/80,1])
                    cylinder(r=40, h=1, center=true);
    };
}
module body(){
    //tube body
    hull(){
        difference(){
            translate([0,LENGTH/2,50])
                scale([0.95,3,1])
                    sphere(r=46, center=true);
            translate([0,LENGTH,50])
                cube([100,LENGTH,100], center=true);
        };
        translate([0,60,29.5])
            rotate([0,0,0])
                scale([1,(LENGTH-120)/80,1])
                    cylinder(r=40, h=1, center=true);
        translate([0,-80,29.5])
            rotate([0,0,0])
                scale([1,(LENGTH-160)/80,1])
                    cylinder(r=40, h=1, center=true);
    };
    hull(){
        difference(){
            translate([0,LENGTH/2,50])
                scale([0.95,3,1])
                    sphere(r=46, center=true);
            translate([0,LENGTH,50])
                cube([100,LENGTH,100], center=true);
        };
        translate([0,30,29.5])
            rotate([0,0,0])
                scale([1.15,(LENGTH-60)/80,1])
                    cylinder(r=40, h=1, center=true);
        translate([0,90,29.5])
            rotate([0,0,0])
                scale([1.15,(LENGTH-180)/80,1])
                    cylinder(r=40, h=1, center=true);
    };
    //base
    hull(){
        translate([0,-LENGTH/2+0.1,27.5])
            rotate([90,0,0])
                cube([110,5,0.01], center=true);
        translate([0,LENGTH/2-0.1,27.5])
            rotate([90,0,0])
                cube([110,5,0.01], center=true);
        translate([0,-LENGTH/2+0.1,30])
            rotate([90,0,0])
                cube([80,10,0.01], center=true);
        translate([0,LENGTH/2-0.1,30])
            rotate([90,0,0])
                cube([80,10,0.01], center=true);
    };
    //scoop
    intersection(){
        hull(){
            translate([0,40,27.5])
                scale([1.4,0.7,1])
                    cylinder(r=55,h=5, center=true);
            translate([0,LENGTH/2-0.01,25])
                rotate([0,90,0])
                    scale([1,3,1])
                        cylinder(r=15,h=110, center=true);
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
                    translate([-20,110,20])
                        rotate([0,0,0])
                            scale([1,3,1])
                                sphere(r=20, center=true);
                };
                translate([0,0,100])
                    cube([200,400,160],center=true);
            };
        };
        translate([0,LENGTH/4,15])
            cube([110,LENGTH/2,30],center=true);
    };
    //box faces
    //top
    translate([0,0,97.5])
        rotate([0,0,0])
            cube([110,LENGTH,5], center=true);
    //middle
    translate([0,0,50])
        rotate([0,0,0])
            cube([20,LENGTH,20], center=true);
    //middle
    translate([0,0,57.5])
        rotate([0,0,0])
            cube([110,LENGTH,5], center=true);
    //middle
    translate([0,0,62.5])
        rotate([0,0,0])
            cube([10,LENGTH,75], center=true);
    //centre
    translate([0,0,62.5])
        rotate([0,0,0])
            cube([110,20,75], center=true);
    //end plates
    translate([0,LENGTH/2-2.5,62.5])
        rotate([0,0,0])
            cube([110,5,75], center=true);
    translate([0,-LENGTH/2+5,62.5])
        rotate([0,0,0])
            cube([110,10,75], center=true);
};
module full () {
    difference(){
        body();
        cavity ();
        //bolt holes
        //exit end
        translate([48,LENGTH/2,40])
            rotate([90,0,0])
                cylinder(r=2.5,h=22,center=true);
        translate([-48,LENGTH/2,40])
            rotate([90,0,0])
                cylinder(r=2.5,h=22,center=true);
        translate([45,LENGTH/2,85])
            rotate([90,0,0])
                cylinder(r=2.5,h=22,center=true);
        translate([-45,LENGTH/2,85])
            rotate([90,0,0])
                cylinder(r=2.5,h=22,center=true);
        //motor end
        translate([45,-LENGTH/2,45])
            rotate([90,0,0])
                cylinder(r=2.5,h=22,center=true);
        translate([-45,-LENGTH/2,45])
            rotate([90,0,0])
                cylinder(r=2.5,h=22,center=true);
        translate([45,-LENGTH/2+10,45])
            rotate([90,0,0])
                cylinder(r=4,h=10,center=true,$fn=6);
        translate([-45,-LENGTH/2+10,45])
            rotate([90,0,0])
                cylinder(r=4,h=10,center=true,$fn=6);
        translate([45,-LENGTH/2,75])
            rotate([90,0,0])
                cylinder(r=2.5,h=22,center=true);
        translate([-45,-LENGTH/2,75])
            rotate([90,0,0])
                cylinder(r=2.5,h=22,center=true);
        //middle
        translate([48,0,40])
            rotate([90,0,0])
                cylinder(r=2.5,h=22,center=true);
        translate([-48,0,40])
            rotate([90,0,0])
                cylinder(r=2.5,h=22,center=true);
        translate([45,0,85])
            rotate([90,0,0])
                cylinder(r=2.5,h=22,center=true);
        translate([-45,0,85])
            rotate([90,0,0])
                cylinder(r=2.5,h=22,center=true);
        //top
        translate([45,-90,100])
            rotate([0,0,0])
                cylinder(r=2.5,h=22,center=true);
        translate([-45,-90,100])
            rotate([0,0,0])
                cylinder(r=2.5,h=22,center=true);
        translate([45,-20,100])
            rotate([0,0,0])
                cylinder(r=2.5,h=22,center=true);
        translate([-45,-20,100])
            rotate([0,0,0])
                cylinder(r=2.5,h=22,center=true);
        //cooling hose holes
        //intake
        translate([-30,-LENGTH/2,45])
            rotate([90,0,0])
                cylinder(r=3,h=22,center=true);
        translate([-45,-85,27.5])
            rotate([120,0,0])
                cylinder(r=3,h=40,center=true);
        //outlet
        translate([-30,0,65])
            rotate([90,0,0])
                cylinder(r=3,h=LENGTH+2,center=true);
        //intake
        translate([30,-LENGTH/2,45])
            rotate([90,0,0])
                cylinder(r=3,h=22,center=true);
        translate([45,-85,27.5])
            rotate([120,0,0])
                cylinder(r=3,h=40,center=true);
        //outlet
        translate([30,0,65])
            rotate([90,0,0])
                cylinder(r=3,h=LENGTH+2,center=true);
        //shaft hole
        translate([0,0,50])
            rotate([90,0,0])
                cylinder(r=5,h=LENGTH+2,center=true);
        //shaft sealing bit
        translate([0,-110,50])
            rotate([0,0,0])
                scale([3,1,3])
                    sphere(r=3, center=true);
        //centre plate through hole
        hull(){
            translate([0,-22.5,82.5])
                rotate([0,90,0])
                    cylinder(r=7.5,h=LENGTH+2,center=true);
            translate([0,-70,77.5])
                cube([20,50,25], center=true);
        }
    };
    //stators
    difference(){
        union(){
            translate([0,LENGTH/2,50])
                scale([1,12,1])
                    rotate([0,90,0])
                        cylinder(r=1, h=110, center=true);
            translate([0,LENGTH/2,50])
                scale([1,12,1])
                    rotate([0,30,0])
                        cylinder(r=1, h=110, center=true);
            translate([0,LENGTH/2,50])
                scale([1,12,1])
                    rotate([0,150,0])
                        cylinder(r=1, h=110, center=true);
            translate([0,LENGTH/2,50])
                scale([1,2.4,1])
                    rotate([0,0,0])
                        sphere(r=7.5, center=true);
        };
        translate([0,LENGTH,50])
            cube([110,LENGTH,100], center=true);
        translate([0,0,50])
            rotate([90,0,0])
                cylinder(r=5,h=LENGTH+2,center=true);
    };
}
intersection(){
    toroid();
    body();
};
//use this code to select halves to print
//change translate from positive to negative to select half
//rotate([-90,0,0])
//    intersection(){
        full();
//        translate([0,55,0])
//            cube([200,LENGTH/2,250],center=true);
//    };