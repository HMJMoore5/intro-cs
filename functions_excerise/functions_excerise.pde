void setup () {
  size(600,600); 
}

void draw() {
  noStroke();
  rect(120, 80, 220, 220);
  fill(145, 200, 100);
 square();
  
  translate(300, 50);
  square();
  
   translate(50, 200);
   square();
}

void square() {
push();
translate(50, 50, 50, 50);
pop();
}

}
