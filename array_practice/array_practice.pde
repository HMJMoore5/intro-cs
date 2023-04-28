float y = 0;
int size = 30;

// condensing this to an array
//float y1 = 50;
//y2 = 70;
//...
float[] yPos = {50, 180, 40, 100, 60, 300, 220, 40, 170, 200};

void setup() {
  size(1000, 600);
}

void draw() {
  background(100);
  fill(3, 127, 252);
  for (int x = 1; x <= 10; x = x + 1) {
    // accessing the array using arrayName[#]
    // starting at 0!
    yPos[x - 1] = yPos[x - 1] + 1;
    raindrop(x * 100, yPos[x - 1], 20, 30);


    if (yPos[x - 1] > 550) {
      yPos[x - 1] = 0;
      size = size + 5;
    }
  }
  
 
  arc(500, 600, 1000, size, 90, 100);
  
}



void raindrop(float xCenter, float yCenter,
  float w, float h) {
  triangle(xCenter - w/2, yCenter, xCenter + w/2,
    yCenter, xCenter, yCenter - h);

  arc(xCenter, yCenter, w, h, 0, PI);
}
