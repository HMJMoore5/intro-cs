void setup () {
 size(1000, 600);
 
  for (int i = 0; i < 30; i += 1) {
   building(random(50, 950), random(50, 550));
   print(i);
 }
 
 
}

void draw() {
  background(130);
  rectMode(CENTER);
   // street
 fill(0);
 rect(500, 550, width, 100);

 
 
building(600, 450);
building(200, 500);
 
 
}





void building(float x, float yBottom){

 float buildingWidth = 300;
 float buildingHeight = 400;
 
 stroke(0);
 strokeWeight(3);
  
 // antena 
 line(x, yBottom - buildingHeight, x, yBottom - buildingHeight - 50);
  
 
 // building body
 fill(22, 213, 224);
 rect(x, yBottom - buildingHeight/2, buildingWidth/2, buildingHeight); 
 

 // door
 fill(186, 151, 115);
 
 rect(x, yBottom - 50, 70, 100);
 
 // windows
 fill(225);
 rect(x + 40, yBottom - 2 * buildingHeight/3, 30, 30);
 
}
