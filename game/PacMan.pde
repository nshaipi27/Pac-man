// SubClass of characters to control pacman's behavior
class Pacman extends Characters {
  PImage pacmanImage; // whichever image we find of Pacman
  int pelletsConsumed = 0;
  boolean pelletCollision = false;
  boolean pelletEaten = false;



  Pacman(int xPos, int yPos, int speed, int size) {
    super(xPos, yPos, speed, size);
    //load PacMan Image
    //img = loadImage("_");
  }
  int getCenterX() {
    return xPos;
  }

  int getCenterY() {
    return yPos;
  }

  int getXPosWhenRight() {
    return xPos + size/2;
  }

  int getYPosWhenDown() {
    return yPos + size/2;
  }

  int getYPosWhenUp() {
    return yPos - size/2;
  }

  int getXPosWhenLeft() {
    return xPos - size/2;
  }


  void update(Maze maze, Pacman pacman) {
    print (maze.pacmanCollidedWithWall(pacman));
    if (!maze.pacmanCollidedWithWall(pacman)) {
      if (movingUp == true) {
        pacman.moveUp();
      } else if (movingDown == true) {
        pacman.moveDown();
      } else if (movingRight == true) {
        pacman.moveRight();
      } else if (movingLeft == true) {
        pacman.moveLeft();
      }
    } else {
      if (movingRight == true) {
        xPos -=  moveSpeed;
      } else if (movingLeft == true) {
        xPos += moveSpeed;
      } else if (movingDown == true) {
        yPos -= moveSpeed;
      } else if (movingUp == true) {
        yPos += moveSpeed;
      }
    }
  }

  void render() {
    fill(color(255, 255, 0));
    circle(xPos, yPos, size);
  }


  boolean checkWallCollision(Pacman pacman) {
    pacmanCellX = (int) (pacman.getXPos() - xPos) / size;  // Assuming the initial xPos is 50
    pacmanCellY = (int) (pacman.getYPos() - yPos) / size;  // Assuming the initial yPos is 60
    // print(pacmanCellX + " " + pacmanCellY + " ");
    for (int i = 0; i < 28; i++) {
      for (int j = 0; j < 30; j++) {
        if (grid1[pacmanCellY][pacmanCellX] == 1) {
          return true;
        }
      }
    }
    return false;
  }


  void moveUp() {
    movingUp = true;
    movingDown = false;
    movingLeft = false;
    movingRight = false;
    yPos -= moveSpeed;
  }

  void moveDown() {
    movingUp = false;
    movingDown = true;
    movingLeft = false;
    movingRight = false;
    yPos += moveSpeed;
  }

  void moveLeft() {
    movingUp = false;
    movingDown = false;
    movingRight = false;
    movingLeft = true;
    xPos -= moveSpeed;
  }

  void moveRight() {
    movingUp = false;
    movingDown = false;
    movingLeft = false;
    movingRight = true;
    xPos += moveSpeed;
  }

  boolean checkGhostCollision() {
    if (pacmanCellX == 3) {
      return true;
    }
    return false; //temporary return value
  }

  boolean checkSmallPelletCollision() {
    if (pacmanCellX == 4) {
      return true;
    }
    return false; //temporary return value
  }

  boolean checkBigPelletCollision() {
    if (pacmanCellY == 5) {
      return true;
    }
    return false;
  }
}
