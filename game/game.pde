int [][] grid1 = new int [28][30];
int [][] saveGrid = new int [28][30];
int pacmanCellX;
int pacmanCellY;

boolean movingRight = false;
boolean movingLeft = false;
boolean movingUp = false;
boolean movingDown = false;

Pacman test;
Maze testMaze;

void setup() {
  size(700, 680);
  test = new Pacman(80, 220, 1, 10);
  testMaze = new Maze();

  testMaze.render1();
  //println(grid1[3][7]);
}

void draw () {
  background(155);

  testMaze.render1();
  testMaze.pacmanCollidedWithWall(test);
  testMaze.renderPac(test, testMaze);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      movingUp = true;
      movingDown = false;
      movingLeft = false;
      movingRight = false;
      test.moveUp();
    } else if (keyCode == DOWN) {
      movingDown = true;
      movingUp = false;
      movingLeft = false;
      movingRight = false;
      test.moveDown();
    } else if (keyCode == LEFT) {
      movingLeft = true;
      movingUp = false;
      movingDown = false;
      movingRight = false;
      test.moveLeft();
    } else if (keyCode == RIGHT) {
      movingRight = true;
      movingLeft = false;
      movingDown = false;
      movingUp = false;
      test.moveRight();
    }
  }
}
