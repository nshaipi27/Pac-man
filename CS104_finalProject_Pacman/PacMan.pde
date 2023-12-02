// SubClass of characters to control pacman's behavior
class Pacman extends Characters{
  PImage pacmanImage; // whichever image we find of Pacman
  
  Pacman(float x, float y, float speed, int size, PImage img) {
    super(x, y, speed, size);
    pacmanImage = img;
  }
  
  void checkGhostCollision(Ghosts ghosts){
    //think of logic
    if((xPos + size) > ghosts.getCenterPosition() && (xPos < ghost.getCenterPosition())){
      gameOver = true;
      return true;
    }
      return false;
  }
  
  void checkPelletCollision(){
    //think of logic
    if((xPos + size) > pellet.getCenterPosition() && (xPos < pellet.getCenterPosition())){
      score++;
      return true;
    }
      return false;
  }
  
  void update(){
   if (key == CODED){
    if (keyCode == UP){
    super.moveUp();
   }
     else if (keyCode == DOWN){
      super.moveDown(); 
     }
     else if (keyCode == LEFT){
       super.moveLeft();
     }
     else if (keyCode == RIGHT){
       super.moveRight(); 
     }
  }
}
