int x = 0;
int y = 0;
float f = 200;
int b = 75;

void setup(){
 size(1000, 1000);
 }

void draw() {
  background(200);
  //
  fill(105, 163, 51, 100);
  circle(width/2, height/2, 300);
  
  fill(51, 163, 161);
    square(0, 0, f);
  f = f - 2.5;
  
  fill(141, 10, 163);
    square(600, y, 30);
    y = y + 1;
    
    fill(170, 290, 190);
    triangle(0,0,b,50,0,100);
    b = b + 1;
}
