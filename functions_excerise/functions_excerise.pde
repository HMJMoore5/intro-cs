void setup () {
  size(600,600); 
}

void draw() {
  noStroke();
  fill(145, 200, 100);
 star();
  
  translate(300, 50);
  star();
  
   translate(50, 200);
   star();
}

void star() {
  beginShape();
  vertex(170,80); //highest 
  vertex(250, 300);
   vertex(70, 160);
   vertex(300, 160);
  vertex(130, 300);
  endShape(); 
}

void mousePressed() {
  println("coordinates are: "
  + mouseX + ","
  + mouseY);
  circle(mouseX, mouseY, 30);
}
