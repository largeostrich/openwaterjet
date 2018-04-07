$fn=72;
LENGTH=220;
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
        translate([0,-45,-0.5])
            rotate([0,0,0])
                scale([1,(LENGTH+35)/80,1])
                    cylinder(r=40, h=1, center=true);
    };
}
module body () {
    difference(){
        union(){
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
                translate([0,-20,29.5])
                    rotate([0,0,0])
                        scale([1,(LENGTH-40)/80,1])
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
            };
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
                cylinder(r=5,h=10,center=true,$fn=6);
        translate([-45,-LENGTH/2+10,45])
            rotate([90,0,0])
                cylinder(r=5,h=10,center=true,$fn=6);
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
        //in
        translate([-30,-LENGTH/2,45])
            rotate([90,0,0])
                cylinder(r=3,h=22,center=true);
        translate([-40,-80,27.5])
            rotate([120,0,0])
                cylinder(r=3,h=30,center=true);
        //out
        translate([-30,0,65])
            rotate([90,0,0])
                cylinder(r=3,h=LENGTH+2,center=true);
        //in
        translate([30,-LENGTH/2,45])
            rotate([90,0,0])
                cylinder(r=3,h=22,center=true);
        translate([40,-80,27.5])
            rotate([120,0,0])
                cylinder(r=3,h=30,center=true);
        //out
        translate([30,0,65])
            rotate([90,0,0])
                cylinder(r=3,h=LENGTH+2,center=true);
        //shaft hole
        translate([0,0,50])
            rotate([90,0,0])
                cylinder(r=5,h=LENGTH+2,center=true);
        //through hole
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
//use this code to select halves to print
//rotate([-90,0,0])
//    intersection(){
        body();
//        translate([0,55,0])
//            cube([200,LENGTH/2,250],center=true);
//    };