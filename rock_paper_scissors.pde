String userChoice;
String computerChoice;

void setup() {
 size(700, 700); 
 textSize(30);
}

void draw() {
  fill(255);
  if(userChoice == "Rock") {
    fill(250, 100, 0);
  }
  rect(width / 3 - 50, 100, 100, 50);
  fill(255);
   rect(width / 3 + 100, 100, 100, 50);
   fill(255);
   rect(width / 3 + 250, 100, 100, 50);
   fill(255);
   
   fill(0);
   text("Rock", width / 3 - 50, 140);
   text("Paper", width / 3 + 100, 140);
   text("Scissors", width / 3 + 250, 140);
}

void mousePressed() {
 
  println(userChoice);
  if (mouseX > width / 3 - 50 && mouseX < width / 3 + 50 &&
  mouseY > 100 && mouseY < 150) {
    userChoice = "Rock";
  }
  else { 
    userChoice = "Not Chosen";
  }
    
    if(mouseX > width / 3 + 100 && mouseX < width / 3 + 200 &&
    mouseY > 100 && mouseY < 200){
   userChoice = "Paper";
    }
    else {
      userChoice = "Not Chosen";
    }
   
    
    
    
  //else if () {
  //  userChoice = "Paper";
  //}
  //else if() {
  // userChoice = "Scissors";
  //}
}
