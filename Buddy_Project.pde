int diam = 65;

void setup() {
  size(800, 800);
}

void draw() {
  background(0,0,255);
 //Armin's Code
  // left leg
  fill(#698362);
  stroke(#5C6F98);
  strokeWeight(3);
  rect(350, 615, 30, 150);
  
  // right leg
  fill(#698362);
  stroke(#5C6F98);
  strokeWeight(3);
  rect(420, 620, 30, 150);
  
  // left foot
  fill(#698362);
  stroke(#5C6F98);
  strokeWeight(3);
  ellipse(359, 773, 45, 30);
  
  // right foot
  fill(#698362);
  stroke(#5C6F98);
  strokeWeight(3);
  ellipse(443, 775, 45, 30);
  
  //left arm
  fill(#698362);
  stroke(#5C6F98);
  strokeWeight(3);
  rect(317, 435, 30, 140);

  //right arm
  fill(#698362);
  stroke(#5C6F98);
  strokeWeight(3);
  rect(450, 435, 30, 140);

  //actual torso
  fill(#698362);
  stroke(#5C6F98);
  strokeWeight(3);
  rect(350, 425, 100, 200);

  //head code
  fill(#698362);
  stroke(#5C6F98);
  strokeWeight(3);
  ellipse(400, 275, 250, 300);

  //eyes are in these bottom lines
  // left eye
  fill(#000000);
  stroke(255);
  strokeWeight(5);
  circle(345, 325, 90);

  // left pupil
  fill(#ff0000 );
  stroke(#ff0000 );
  strokeWeight(5);
  circle(345, 325, diam);

  //right eye
  fill(#000000);
  stroke(255);
  strokeWeight(5);
  circle(455, 325, 90);

  //right pupil
  fill(#ff0000 );
  stroke(#ff0000 );
  strokeWeight(5);
  circle(455, 325, diam);
  
  
  ellipseMode(CENTER);    
   
  //UFO structure, moves with mouse
  stroke(0);
  fill(255);
  ellipse(mouseX, mouseY-25, 80, 100);
   
  noStroke(); 
  fill(0); 
  ellipse(mouseX, mouseY, 150, 60); 
    

  noStroke(); 
  fill(255); 
  ellipse(mouseX, mouseY-23, 80,15); 

//James's Code
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
triangle(150, 800, 230, 570, 320, 800);

//body
fill(0, 200, 19);
rect(180, 300, 100, 600);

//arms
fill(200, 20, 20);
rect(160, 230, 20, 150);
rect(280, 230, 20, 150);

}
