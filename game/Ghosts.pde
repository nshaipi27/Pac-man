abstract class Ghosts extends Characters {
  int xPos;
  int yPos;
  int size = 50;
  int moveSpeed = 30;
  GhostState state;
  int targetX;
  int targetY;
  PImage ghostImage;
  Boolean pacmanAbove;
  Boolean pacmanLeft;
  Pacman pacman;

  Ghosts(int xPos, int yPos, int moveSpeed, int size) {
    super(xPos, yPos, moveSpeed, size);
  }


  void render() { 
  }

  void update() {
    if (pacman.yPos < yPos) {
      pacmanAbove = true;
    } else {
      pacmanAbove = false;
    }

    if (pacman.xPos < xPos) {
      pacmanLeft = true;
    } else {
      pacmanLeft = false;
    }
    float direction = random(0, 1);
    float move;

    if (direction < 0.5) {
      move = random(1, 5);
      if (pacmanAbove == true) {
        yPos = yPos + move;
      } else {
        yPos = yPos - move;
      }
    } else if (direction >= 0.5) {
      move = random(1, 5);
      if (pacmanLeft == true) {
        xPos = xPos - move;
      } else {
        xPos = xPos + move;
      }
    }

    //while loop(while it follows pacman): follow pacman x direction and if it hits wall follow pacman y direction


    //void frightenedBehavior() {
    //  ghostImage = "/images/FrightenedGhost.png";
    //}

    //void scatterBehavior() {
    //  //when the game starts
    //  moveToScatterTarget();
    //}

    //private void moveToScatterTarget() {
    //  if (x != targetX && y != targetY) {
    //    //add
    //  }
    //}

    //boolean checkCollision(Pacman pacman) {
    //  return false;
    //}
  }

  //generate a random number, if random number is between greater than .5
  // move in x direction, otherwise move in y direction
  // if we move in x direction, generate another random number, for example 9
  // for the next 9 calls to update, do x++
  // when he exhausts that count, start the process over again
  // think of logic for what would happen if ghost hits a wall



// everything below this is old
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
    if(ghostFollowPacMan == TRUE){
    }
    else if(ghostFollowPacMan == FALSE){
    }
}
  void chaseBehavior() {
    //chase behavior
    while(ghostFollowPacMan()){
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
