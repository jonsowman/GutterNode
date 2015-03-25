GUT_WIDTH = 124;
GUT_HEIGHT = 51;
WALL_THICKNESS = 2;
GUT_LIP = 10;
HOLE_R = 2;

difference(){
    union(){
        difference(){
            cylinder(h = GUT_HEIGHT, r = GUT_WIDTH / 2, center=false);
            translate([-(GUT_WIDTH / 2),0,-1]) {
                cube([GUT_WIDTH, GUT_WIDTH / 2, GUT_WIDTH + 4]);
            }
        }

        translate([-(GUT_WIDTH / 2),0,0]) {
            cube([GUT_WIDTH, GUT_LIP, GUT_HEIGHT]);
            }
        }
    
    union(){
        translate([0,0,WALL_THICKNESS]){
            cylinder(h = GUT_HEIGHT+10 - (WALL_THICKNESS *2), r = GUT_WIDTH / 2 - WALL_THICKNESS, center=false);
        }

    translate([-((GUT_WIDTH /2) - WALL_THICKNESS),0, WALL_THICKNESS]) {
        cube([GUT_WIDTH - (WALL_THICKNESS *2),(GUT_WIDTH + WALL_THICKNESS) / 2,GUT_HEIGHT -  (WALL_THICKNESS *2) + 10]);
        }
    }
    //create screw holes
    screw();
}

//screw holes
module screw(){

//translate([GUT_WIDTH / 2 - 20,GUT_WIDTH / 2 - 6,GUT_HEIGHT - 2]){
//    cylinder(h = 3, r = 1.5,center=false);
//}
//translate([-(GUT_WIDTH / 2 - 20),(GUT_WIDTH / 2 - 6),GUT_HEIGHT - 2]){
//    cylinder(h = 3, r = 1.5,center=false);
//}
translate([(GUT_WIDTH / 2 - 20),(GUT_LIP - 10),-1]){
    cylinder(h = WALL_THICKNESS + 2, r = HOLE_R,center=false);
}
translate([-(GUT_WIDTH / 2 - 20),(GUT_LIP - 10),-1]){
    cylinder(h = WALL_THICKNESS + 2, r = HOLE_R,center=false);
}
}