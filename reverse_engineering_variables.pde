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
    dx = -15; 
  } else if ( x <= 0 ) {
    dx = 15;
  }
  
  if ( y >= height ) {
    dy = -10;
  } else if ( y <= 0 ) {
    dy = 10;
  }
}
