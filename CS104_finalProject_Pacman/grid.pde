int [][] cells = new int [28][36];

void setup() {
  size(700, 680);
}

void draw () {
  int xPos = 50;
  int yPos = 60;
  int size = 20;
  for (int i = 0; i < 28; i++) {
    for (int j = 0; j < 30; j++) {
      cells[i][j] = 0;
      square(xPos, yPos, size);
      xPos += size;
    }
    xPos = 50;
    yPos += size;
  }
  yPos = 50;
}
