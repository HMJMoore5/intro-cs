int x = 50;
int y = 60;

int dx = 15; 
int dy = 10; 

void setup() {
  size(600, 600);
}

void draw() {
  background(100);
  fill(129, 219, 222);
  circle(x, y, 35); 
  x = x + dx;
  y = y + dy; 
  if ( x >= width ) {
    dx = -dx; 
  } else if ( x <= 0 ) {
    dx = -dx;
  }
  
  if ( y >= height ) {
    dy = -dy;
  } else if ( y <= 0 ) {
    dy = -dy;
  }
}
