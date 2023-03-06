void setup () {
  size(1000, 600);
  background(130);
  // street
    rectMode(CENTER);

  fill(0);
  rect(500, 550, width, 100);


  for (int i = 0; i < 30; i += 1) {
    building(random(50, 950), random(500, 550));
  }
}





void building(float x, float yBottom) {
random(3, 5);
  float buildingWidth = 300;
  float buildingHeight = 400;
  int floors = (int) random(3, 5);
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
    while (floors>0) {
    fill(225);
    rect(x + 40, yBottom - floors * buildingHeight/5 - 50, 30, 30);

    floors -= 1;
  }
  //rect(x + 40, yBottom - 2 * buildingHeight/3, 30, 30);
}
