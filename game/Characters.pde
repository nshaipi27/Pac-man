//superClass for both ghosts and pacman
abstract class Characters {
  int xPos; // Position of the character
  int yPos;
  int moveSpeed; // Movement speed
  int size; // Size of the character ---?
  PImage characterImage;
  boolean hitWall = false;


  Characters(int xPos, int yPos, int moveSpeed, int size) {
    this.xPos = xPos;
    this.yPos = yPos;
    this.moveSpeed = moveSpeed;
    this.size = size;
    characterImage = loadImage("images/pacManLeftSmall.png");
  }

  int getXPos() {
    return 0;
  }

  int getYPos() {
    return 0;
  }

  void update() {
  }

  void render () {
  }

  float getCenterPosition() {
    return 0; // temporary return value
  }
}
