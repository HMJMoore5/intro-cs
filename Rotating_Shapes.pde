int r = 0; 
void setup() {
 size(800, 800); 
}

void draw(){
 background(151, 161, 171); 
 translate(400, 400);
 rotate(radians(r));
 r = r + 1;
 circle (200, 0, 50);
 circle(0, 200, 50);
 circle(-200, 0, 50);
 circle(0, -200, 50);
}
