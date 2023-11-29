//superClass for both ghosts and pacman
class Characters {
  float x; // Position of the character
  float y;
  float speed; // Movement speed
  int size; // Size of the character
  color characterColor; // Color of the character

  Characters(float x, float y, float speed, int size, color characterColor) {
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.size = size;
    this.characterColor = characterColor;
  }

  void display() {
    // Display the character 
    fill(characterColor);
    ellipse(x, y, size, size);
  }

  void moveUp() {
    y -= speed;
  }

  void moveDown() {
    y += speed;
  }

  void moveLeft() {
    x -= speed;
  }

  void moveRight() {
    x += speed;
  }

  // Additional methods/functions relevant to both characters can be added here
}
