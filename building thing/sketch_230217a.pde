void setup () {
 size(1000, 600);
}

void draw() {
  background(130);
  rectMode(CENTER);
   // street
 fill(0);
 rect(500, 550, width, 100);
 
 
 
  building1(600, 100, 500);
  building2();
  
  
  
}

void building1(float x, float floors, float yBottom){
 float buildingWidth = 300;
 float buildingHeight = 400;
 
 stroke(0);
 strokeWeight(3);
  
 // antena 
 line(x, yBottom - buildingHeight, x, yBottom - buildingHeight - 50);
 
 // building body
 fill(135, 214, 230);
 rect(x, yBottom - buildingHeight/2, buildingWidth, buildingHeight); 
 

 // door
 fill(186, 151, 115);
 rect(buildingWidth*2, buildingHeight, floors - 8, buildingWidth - 100);
 
 // windows
 fill(225);
 rect(675, 220, 35, 35);
 
}

void building2(){
  
 // antena
 line(190, 150, 190, 40);
 
 // body
 fill(252, 186, 3);
 rect(200, 300, 300, 400);

  // door
  fill(186, 151, 115);
  rect(200, 400, 100, 200);
 
 // window
 fill(225);
 rect(285, 200, 35, 35);
  
}
