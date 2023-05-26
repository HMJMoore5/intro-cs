//Next time, I would like to spend more time developing a more complex idea. 
//The most challenging part of the project for me was thinking of a fun game to create. 
// For me, the most enjoyable part when being able to have my friends and family play a game that I coded.
// On my own, I had to figure out how to get my ideas from paper to the computer. 
// I was able to get help from my friend Andrew, who made the who process easier.

// Help from Andrew

int level = 1;
int score = 0;
int playerX;
int playerY;
int playerSize = 30;
int blockY = -30;
int blockSpeed = 3;
int blockX;
int blockWidth = 50;
int blockHeight = 30;
boolean gameStarted = false;
boolean gameReset = false;

void setup() {
  size(400, 400);
  playerX = width / 2;
  playerY = height - playerSize;
  blockX = int(random(width - blockWidth));
}

void draw() {
  background(35, 11, 38);
  
  if (!gameStarted) {
    startScreen();
  } else if (!gameReset) {
    gameScreen();
  } else {
    resetScreen();
  }
}

void startScreen() {
  fill(255, 255, 255);
  textAlign(CENTER);
  textSize(30);
  text("It's a VERY Simple Game", width / 2, height / 2 - 30);
  textSize(20);
  text("Smash that ENTER button", width / 2, height / 2 + 10);
}

void gameScreen() {
  movePlayer();
  moveBlock();
  Collision();
  
fill(99, 173, 168);
 textAlign(CENTER);
 text("Don't mess up!!", 100, 100);
 text("Don't mess up!!", 150, 150);
 text("Don't mess up!!", 200, 200);
 text("Don't mess up!!", 250, 250);
 text("Don't mess up!!", 300, 300);
 
 
  fill(187, 217, 98);
  circle(playerX, playerY, playerSize);
  
  fill(29, 184, 45);
  rect(blockX, blockY, blockWidth, blockHeight);
  
  fill(255, 255, 255);
  textAlign(RIGHT);
  text("Level: " + level, 380, 20);
  text("Score: " + score, 380, 40);
  

 
 
}

void resetScreen() {
  fill(255, 255, 255);
  textAlign(CENTER);
  textSize(30);
  text("How did you lose? : (", width / 2, height / 2 - 30);
  textSize(20);
  text("Hit ENTER to try again", width / 2, height / 2 + 10);
}

void movePlayer() {
  if (keyPressed) {
    if (keyCode == LEFT && playerX > 0) {
      playerX -= 5;
    } else if (keyCode == RIGHT && playerX < width - playerSize) {
      playerX += 5;
    }
  }
}

void moveBlock() {
  blockY += blockSpeed;
  
  if (blockY > height) {
    blockY = -blockHeight;
    blockX = int(random(width - blockWidth));
    score++;
    
    if (score % 2 == 0) {
      level++;
      blockSpeed++;
    }
  }
}

void Collision() {
  if (blockY + blockHeight >= playerY && blockY <= playerY + playerSize && blockX + blockWidth >= playerX && blockX <= playerX + playerSize) {
    gameReset = true;
  }
}

void keyPressed() {
  if (!gameStarted && keyCode == ENTER) {
    gameStarted = true;
  } else if (gameReset && keyCode == ENTER) {
    score();
  }
}

void score() {
  level = 1;
  score = 0;
  playerX = width / 2;
  blockY = -30;
  blockSpeed = 3;
  blockX = int(random(width - blockWidth));
  gameReset = false;
}
