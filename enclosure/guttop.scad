GUT_WIDTH = 124; //increased from 122
GUT_HEIGHT = 51; //increased from 47
WALL_THICKNESS = 2;
GUT_LIP = 10;
GUT_TOP = 20;
HOLE_R = 2;

//cube([GUT_WIDTH, GUT_LIP, GUT_HEIGHT]);

union(){
difference(){
    cube([GUT_HEIGHT + (WALL_THICKNESS * 2), GUT_WIDTH + (WALL_THICKNESS * 2), GUT_TOP], center=false);
    translate([2,2,2]){
        cube([GUT_HEIGHT, GUT_WIDTH, GUT_TOP + 10], center = false);
    }
    //create screw holes
    screw();
}
    clips();
}
// clips
module clips(){
        translate([-10,27,0]){
        difference(){
        cube([10,10,8]);
            translate([2,-5,3]){
                cube([4,20,12]);
            }
        }
    }
         translate([-10,(GUT_WIDTH - 37),0]){
        difference(){
        cube([10,10,8]);
            translate([2,-5,3]){
                cube([4,20,12]);
            }
        }
    }
}


//screw holes
module screw(){

translate([GUT_HEIGHT + 1,32,12]){
    rotate([0,90,0]){
        cylinder(h = WALL_THICKNESS + 2, r = HOLE_R,center=false);
        }
        }
translate([GUT_HEIGHT + 1,(GUT_WIDTH - 32),12]){
        rotate([0,90,0]){
            cylinder(h = WALL_THICKNESS + 2, r = HOLE_R,center=false);
        }
    }

translate([-1,32,12]){
    rotate([0,90,0]){
        cylinder(h = WALL_THICKNESS + 2, r = HOLE_R,center=false);
        }
        }
translate([-1,(GUT_WIDTH - 32),12]){
        rotate([0,90,0]){
            cylinder(h = WALL_THICKNESS + 2, r = HOLE_R,center=false);
        }
    }
    }