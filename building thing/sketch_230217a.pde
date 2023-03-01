void setup () {
 size(1000, 600); 
}

void draw() {
  background(130);
  building(200, 1000, 350);
}

void building(int x, int floors, int y){
 
 stroke(0);
 strokeWeight(3);
  
 // building body
 fill(135, 214, 230);
 rect(x*2, y/2, x, 600); 
 
 // street
 fill(0);
 rect(0, 550, floors, 100);
 
 // door
 fill(186, 151, 115);
 rect(439, y, 120, x);
 
 // windows
 fill(225);
 rect(535, x + 20, 35, 35);
 
 
 
}
