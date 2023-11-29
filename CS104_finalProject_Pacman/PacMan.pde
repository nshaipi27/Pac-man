// SubClass of characters to control pacman's behavior
class Pacman extends Characters{
  PImage pacmanImage; // whichever image we find of Pacman
  
  Pacman(float x, float y, float speed, int size, color characterColor, PImage img) {
    super(x, y, speed, size, characterColor);
    pacmanImage = img;
  }
  
  void checkGhostCollision(){
    //think of logic
  }
  
  void checkPelletCollision(){
    //think of logic
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
