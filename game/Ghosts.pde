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
  boolean ghostFollowPacMan(){
    if(
}
  void chaseBehavior() {
    //chase behavior
    while(//ghost follows pacman){
      targetX = pacman.getX();
      targetY = pacman.getY();
      //moveTowardsTarget();
//while loop(while it follows pacman): follow pacman x direction and if it hits wall follow pacman y direction 
  }

  void frightenedBehavior(){
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
