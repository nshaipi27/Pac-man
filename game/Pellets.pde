class Pellets {
  int xPos;
  int yPos;
  int size;

  Pellets(int xPos, int yPos, int size) {
    this.xPos = xPos;
    this.yPos = yPos;
    this.size = size;
  }

  void render() {
    fill(150, 100, 0);
    stroke(150, 100, 0);
    square(xPos, yPos, size);
    square(xPos, yPos, size);
  }
  
  int getCenterXOfPelletOnGrid(){
    return (int) ((xPos + size) - 65) / 20;
  }
  
  int getCenterYOfPellet(){
    return (int) ((yPos + size) - 75) / 20;
  }
  
}
