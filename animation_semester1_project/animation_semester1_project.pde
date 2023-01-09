// the variable "for" was looked using in the Processing Reference

int numRain = 50;
int CarxPos = 0;
int CaryPos = 300;
int carWidth = 150;
int carHeight = 100;
int carspeed = 5;

//moving/light variables
boolean CarisMoving = true;
boolean CarisLit = false;

//cars in the background
float[] carX;
float[] carY;
int[] carColors;
int numCars = 1;
float carSize = 45;


void setup() {
  size(600, 600);
  noStroke();

  // initialize the range of the background cars
  carX = new float[numCars];
  carY = new float[numCars];
  carColors = new int[numCars];

  // set all the cars to be off the screen
  // the variable "for" controls a sequence of repetitions
  for (int i = 0; i < numCars; i++) {
    carX[i] = - carSize;
  }
}

void draw() {
  background(141, 145, 144);

  // draw the street
  fill(0);
  rect(0, 400, width, height/2);

  // random cars in background
  // update the positions of the car
  for (int i = 0; i < numCars; i++) {
    // if the car is off the screen, give it a new random position and color
    if (carX[i] < 0) {
      carX[i] = random(width);
      carY[i] = random(height);
      carColors[i] = color(random(255), random(255), random(255));
    }

    // draw the background cars
    fill(carColors[i]);
    rect(carX[i], carY[i], carSize, carSize);

    // move the car to the left
    carX[i] -= 2;
  }

  // draw the main car
  if (CarisLit) {
    fill(50, 99, 99);
  } else {
    fill(10, 252, 236);
  }
  rect(CarxPos, CaryPos, carWidth, carHeight);

  // move the main car if it is supposed to be moving
  if (CarisMoving) {
    CarxPos += carspeed;
  }

  // reset the main car's position
  if (CarxPos > width) {
    CarxPos = 0;
  }

  // sun
  fill(240, 236, 36);
  circle(100, 100, 100);

  // rain
  for (int i = 0; i < numRain; i++) {
    // rain variables:
    float x = random(width);
    float y = random(height);
    float radius = random(5, 8);
    fill(10, 83, 201);
    noStroke();
    ellipse(x + i, y, radius, radius); // the rain drop
  }
}

void mousePressed() {
  // toggle the movement and color change of the box when the mouse is pressed
  CarisMoving = !CarisMoving;
  CarisLit = !CarisLit;
}

// PROJECT DESCRIPTION
// My animation depicts a car driving on the road on a rainy day.
// When the mouse is pressed, the color of the car changes from a light blue to a navy blue and stops moving.
// In the background, there are squares that appear at random times with different colors that represent other cars driving.
// Originally, I wanted to create a game, however I found it very difficult so I decided to create an animation instead.
// My inspiration for this project comes from a park in my neighborhood.
// If you are sitting on one of the benches in the park, you can see a major highway up close and the other highways behind it look smaller.
// Usually the 'smaller' highways travel at a slower speed than the cars on the major highway.
