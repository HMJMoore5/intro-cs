float fgx1 = 0;
int line_x = 700;
float fgx2 = fgx1+30;
float middle = (fgx1+fgx2)/2;

void setup () {
  size(600,600); 
}

void draw() {
  noStroke();
  fill(5, 200, 100);
 star();
  
  translate(300, 50);
  star();
  
   translate(50, 200);
   star();
   
     middle = (fgx1+fgx2)/2;
  stroke(0);
  fgx2 = fgx1+30;
  
  triangle(535, 562, 545, 562, 535, 559);  
  rotate(radians(15));
  fill(0);
  rect(600, 0, 200, 400);
  fill(255);
  field_goal();
  translate(30, 0);
  field_goal();
  translate(30, 0);
  field_goal();
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

// code from Matthew
void field_goal() {
  line(fgx1, 10, fgx1, 20);
  line(fgx2, 10, fgx2, 20);
  line(fgx1, 20, fgx2, 20);
  line(fgx1 + 15, 20, fgx1 + 15, 30);
  line(line_x, 190, line_x, 100);
  triangle(line_x, 90, line_x+3, 100, line_x-3, 100);
}

void mousePressed() {
  println("coordinates are: "
  + mouseX + ","
  + mouseY);
  circle(mouseX, mouseY, 30);
}
