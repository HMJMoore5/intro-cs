String  userChoice;
int rand;
String computerChoice = "Not Chosen";

void setup() {
 size(700, 700); 
 textSize(30);
}

void draw() {
background(150);
  fill(255);
if (userChoice == "Rock") {
    fill(0, 0, 255);
  } else {
    fill(255);
  }
  rect(width / 3 - 100, 100, 100, 50);
  if (userChoice == "Paper") {
    fill(0, 255, 255);
  } else {
    fill(255);
  }
  rect(width / 3 + 50, 100, 100, 50); // paper
  fill(255);
  if (userChoice == "Scissors") {
    fill(255, 130, 130);
  }
  rect(width / 3 + 200, 100, 100, 50); // scissors
  fill(0);
  text("Rock", width / 3 - 100, 140);
  text("Paper", width / 3 + 50, 140);
  text("Scissors", width / 3 + 200, 140);
  
  text("Computer", 100, 400);
  text(computerChoice, 300, 400);

}

void mousePressed() {
   if (mouseX > width /3 - 100 &&
    mouseX < width / 3 &&
    mouseY > 100 && mouseY < 150) {
    userChoice = "Rock";
    rand = (int) random(3);
  } else if (
    mouseX > width / 3 + 50 &&
    mouseX < width / 3 + 150 &&
    mouseY > 100 && mouseY < 150
    ) {
    userChoice = "Paper";
    rand = (int) random(3);
  } else if (
    mouseX > width / 3 + 200 &&
    mouseX < width / 3 + 300 &&
    mouseY > 100 && mouseY < 150
    ) {
    userChoice = "Scissors";
    rand = (int) random(3);
  } else {
    userChoice = "Not Chosen";   
  }

}
