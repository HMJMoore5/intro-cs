int x = 50;
int y = 200;

int dx = 1;
int dy = 4;

void setup(){
  size(600, 600);
}

void draw(){
  background(100);
  circle(x, y, 60);
  x = x + 3;
  y = y + 3;
  x = x + y;
  if (x >= 600) {
    y = y - 1;
    println(y);
  }
  if (x<= 1) {
    y = 5;
  }
   
 }
}
