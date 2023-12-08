// Sub-class of characters to control pacman's behavior
class Pacman {
  int xPos;
  int yPos;
  int moveSpeed;
  int size;
  PImage pacmanImage;
  int pelletsConsumed = 0;
  boolean pelletCollision = false;
  boolean pelletEaten = false;
  PImage pacman;

  Pacman(int xPos, int yPos, int moveSpeed, int size) {
    this.xPos = xPos;
    this.yPos = yPos;
    this.moveSpeed = moveSpeed;
    this.size = size;
    pacman = loadImage("images/pacmanRight.png");
  }

  int getCenterX() {
    if (movingLeft)
      return xPos-12;
    else if (movingRight)
      return xPos+12;
    else
      return xPos;
  }

  int getCenterY() {
    if (movingUp) {
      return yPos - 12;
    } else if (movingDown) {
      return yPos + 12;
    }
    return yPos;
  }

  int getPacSize() {
    return size;
  }


  void render() {
    fill(color(255, 255, 0));
    //image(pacman,xPos, yPos);
    circle(xPos, yPos, size);
  }

  void update(Maze maze, Pacman pacman) {
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
    }
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
}

