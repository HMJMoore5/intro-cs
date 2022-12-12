String userChoice = "Not Chosen";
int rand;
String computerChoice = "Not chosen";

void setup() {
  size(700, 700);
  textSize(30);
}

void draw() {
  fill(255);
  text("computer:", 150, 400);
  text(computerChoice, 450, 400);
  rect(width / 3 -50, 100, 100, 50);
  fill(255);
  rect(width / 3 +100, 100, 100, 50);
  fill(255);
  rect(width / 3 +250, 100, 100, 50);
  fill(0);
  if (userChoice == "rock") {
    fill(250, 0, 0);
    rect(width / 3 -50, 100, 100, 50);
    fill(255);
  }
  if (userChoice == "paper") {
    rect(width / 3 +100, 100, 100, 50);
  fill(255);
  }
  if (userChoice == "scissors") {
    fill(250, 0, 0);
    rect(width / 3 +250, 100, 100, 50);
  fill(255);
  }
  fill(0, 0, 250);
  text("rock", width / 3 -50, 125);
  text("paper", width / 3 +100, 125);
  text("scissors", width / 3 +250, 125);
}
void mousePressed() {
  background(150);

  if (mouseX > width / 3 -50 && mouseX < width / 3 + 50 && mouseY >100 && mouseY<150) {
    rand = (int) random(3);
    userChoice = "rock";
  } else if (mouseX > width / 3 +100 && mouseX < width / 3 + 200 && mouseY >100 && mouseY<150) {
    rand = (int) random(3);
    userChoice = "paper";
  } else if (mouseX > width / 3 +250 && mouseX < width / 3 + 350 && mouseY >100 && mouseY<150) {
    rand = (int) random(3);
    userChoice = "scissors";
  }
  println(mouseX + ", " + mouseY);
  println(userChoice);
  if (rand == 0) {
    computerChoice = "rock";
    if (userChoice == "rock") {
      text("You tied", 300, 600);
    }
    if (userChoice == "paper") {
      text("You won", 300, 600);
    }
    if (userChoice == "scissors") {
      text("You lost", 300, 600);
    }
  }
  if (rand == 1) {
    computerChoice = "paper";
    if (userChoice == "paper") {
      text("You tied", 300, 600);
    }
    if (userChoice == "scissors") {
      text("You won", 300, 600);
    }
    if (userChoice == "rock") {
      text("You lost", 300, 600);
    }
  }
  if (rand == 2) {
    computerChoice = "scissors";
    if (userChoice == "scissors") {
      text("You tied", 300, 600);
    }
    if (userChoice == "rock") {
      text("You won", 300, 600);
    }
    if (userChoice == "paper") {
      text("You lost", 300, 600);
    }
  }
}
