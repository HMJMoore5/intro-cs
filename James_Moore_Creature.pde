void setup() { // called once
size(600, 600);
background(5, 10, 90);
}

void draw() { // called once
stroke(290, 390, 250);
strokeWeight(2);
//face
fill(0, 90, 100);
circle(220, 120, 195);

//eye
fill(225);
circle(190, 70, 40);
circle(250, 70, 40);

//pupils
fill(0);
circle(190, 72, 15);
circle(250, 72, 15);

//mouth
fill(100, 100, 100);
arc(215, 150, 100, 90, radians(5), radians(195));

//Acer lost his legs in the factory, so he was turned into part rover
triangle(150, 500, 230, 370, 320, 500);

//body
fill(0, 200, 19);
rect(180, 219, 100, 180);

//arms
fill(200, 20, 20);
rect(160, 230, 20, 150);
rect(280, 230, 20, 150);

}
