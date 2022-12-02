float x;
float y;

void setup() {
  size(600, 600);
}

void draw() {
 x = random(0, width);
 y = random(0, height);
 
 if(x < 300 && y < 300) {
fill(235, 64, 52);
 }
 else {
   fill(52, 61, 235);
 }
 circle(x, y, 20);


 if(x > 300 && y > 300) { 
  fill(235, 238, 30); 
 }
 else {
   
 }
circle(x, y, 20);


if(x > 300 && y < 300) {
 fill(16, 196, 37); 
}
else {
}
circle(x, y, 20);

}
