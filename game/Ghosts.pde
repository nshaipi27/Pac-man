abstract class Ghosts extends Characters {
  int xPos;
  int yPos;
  int size = 50;
  int moveSpeed = 30;
  GhostState state; 
  int targetX;
  int targetY;
  PImage ghostImage;

  Ghosts(int xPos, int yPos, int moveSpeed, int size) {
    super(xPos, yPos, moveSpeed, size);
  }


  void render() {
  }
  void update() {
  }

  void chaseBehavior() {
    //chase behavior
    //frightened behavior
    targetX = pacman.getX();
    targetY = pacman.getY();
    moveTowardsTarget();
  }

  void scatterBehavior() {
    //when the game starts
    moveToScatterTarget();
  }
  private void moveToScatterTarget(){
    if(x != targetX && y != targetY){
      //add
    }
  }

  boolean checkCollision(Pacman pacman) {
    return false;
  }
}
