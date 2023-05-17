int playerSize = 20;       // Player size
int playerSpeed = 5;       // Player movement speed

int enemySize = 30;        // Enemy size
int enemySpeed = 3;        // Enemy movement speed

int score = 0;             // Player score
boolean gameOver = false;  // Game over state

int playerX, playerY;      // Player position
float enemyX, enemyY;        // Enemy position

void setup() {
  size(400, 400);
  frameRate(60);
  resetGame();
}

void draw() {
  background(255);
  
  if (!gameOver) {
    updatePlayer();
    updateEnemy();
    Collision();
    score++;
  }
  
  drawPlayer();
  drawEnemy();
  displayScore();
  
  if (gameOver) {
    showGameOver();
  }
}

void updatePlayer() {
  if (keyPressed) {
    if (keyCode == LEFT && playerX > 0) {
      playerX -= playerSpeed;
    } else if (keyCode == RIGHT && playerX < width - playerSize) {
      playerX += playerSpeed;
    } else if (keyCode == UP && playerY > 0) {
      playerY -= playerSpeed;
    } else if (keyCode == DOWN && playerY < height - playerSize) {
      playerY += playerSpeed;
    }
  }
}

void drawPlayer() {
  fill(0, 255, 0);
  rect(playerX, playerY, playerSize, playerSize);
}

void updateEnemy() {
  if (enemyY < height) {
    enemyY += enemySpeed;
  } else {
    resetEnemy();
  }
}



void drawEnemy() {
  fill(255, 0, 0);
  rect(enemyX, enemyY, enemySize, enemySize);
}


void Collision() {
  if (dist(playerX, playerY, enemyX, enemyY) < playerSize / 2 + enemySize / 2) {
    gameOver = true;
  }
}

void displayScore() {
  textSize(20);
  textAlign(LEFT);
  text("Score: " + score, 10, 30);
}

void showGameOver() {
  textSize(30);
  textAlign(CENTER);
  text("Game Over!", width / 2, height / 2);
  textSize(20);
  text("Final Score: " + score, width / 2, height / 2 + 30);
}

void resetEnemy() {
  enemyX = random(width);
  enemyY = enemySize;
}

void resetGame() {
  score = 0;
  gameOver = false;
  playerX = width / 2 - playerSize / 2;
  playerY = height - playerSize;
  resetEnemy();
}
