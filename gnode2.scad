GUT_WIDTH = 122;
GUT_HEIGHT = 50;
WALL_THICKNESS = 1.5;
GUT_LIP = 10;
HOLE_R = 2;

module mainbox(){
difference(){
    union(){
        difference(){
            cylinder(h = GUT_HEIGHT, r = GUT_WIDTH / 2, center=false);
            translate([-(GUT_WIDTH / 2),0,-1]) {
                cube([GUT_WIDTH, GUT_WIDTH / 2, GUT_WIDTH + 4]);
            }
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
    
    translate([0,0,(GUT_HEIGHT - 3)]){
        cylinder(h = WALL_THICKNESS + 0.5, r = (GUT_WIDTH / 2) - 1, center=false);
    }
}
}

module sidepanel(){
    difference(){
    //translate([0,0.5,(GUT_HEIGHT - 3)]){
        translate([0,0,0]){
        difference(){
            cylinder(h = WALL_THICKNESS, r = (GUT_WIDTH / 2) - 1, center=false);
            translate([-(GUT_WIDTH / 2),0,-1]) {
                cube([GUT_WIDTH, GUT_WIDTH / 2, GUT_WIDTH + 4]);
                }
                }
                }
    screw();
            }
}

//screw holes
module screw(){

//translate([GUT_WIDTH / 2 - 20,GUT_WIDTH / 2 - 6,GUT_HEIGHT - 2]){
//    cylinder(h = 3, r = 1.5,center=false);
//}
//translate([-(GUT_WIDTH / 2 - 20),(GUT_WIDTH / 2 - 6),GUT_HEIGHT - 2]){
//    cylinder(h = 3, r = 1.5,center=false);
//}
translate([29,(GUT_LIP - 15),-1]){
    cylinder(h = WALL_THICKNESS + 2, r = HOLE_R,center=false);
}
translate([-31,(GUT_LIP - 15),-1]){
    cylinder(h = WALL_THICKNESS + 2, r = HOLE_R,center=false);
}
}

//mainbox();
sidepanel();
