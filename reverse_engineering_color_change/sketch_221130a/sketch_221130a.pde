int r = 255;
int g = 255;
int b = 255;
int x = 25;
int y = 25;
int dx = 7;
int dy = 4;

void setup() {
  size(600,600);
}

void draw() {
  background(180);
  fill(r,g,b);
  circle(x,y,50);
  x=x+dx;
  y=y+dy;
  if (x>=575) {
    dx=-dx;
    r=255;
    g=0;
    b=0;
  }
  if (y>=575) {
    dy=-dy;
    r=0;
    g=255;
    b=0;
  }
  if (x<=25) {
    dx=-dx;
    r=0;
    g=0;
    b=255;
  }
  if (y<=25){
    dy=-dy;
    r=0;
    g=0;
    b=0;
}}
