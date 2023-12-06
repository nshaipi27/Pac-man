int [][] grid1 = new int [28][30];
int [][] saveGrid = new int [28][30];
int pacmanCellX;
int pacmanCellY;

int [][] pelletGrid = new int [27][29]; 
int [][] savePelletGrid = new int [27][29];
int pacmanCellXOnPellet;
int pacmanCellYOnPellet;
int score = 0;
int highScore = 0;

boolean movingRight = false;
boolean movingLeft = false;
boolean movingUp = false;
boolean movingDown = false;

Pacman pacman;
Maze maze;


Level l1;

void setup() {
  size(700, 680);
  pacman = new Pacman(80, 220, 1, 20);
  maze = new Maze();
  l1 = new Level(2, maze);
  print(grid1[0][0]);
}

void draw () {
  background(155);
  l1.update(maze, pacman);
  l1.render(maze, pacman);
  textSize(40);
  fill(0);
  text("Score:" + " " + score, 40, 50);
  text("High Score:" + " " + highScore, 420, 50);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      movingUp = true;
      movingDown = false;
      movingLeft = false;
      movingRight = false;
      pacman.moveUp();
    } else if (keyCode == DOWN) {
      movingDown = true;
      movingUp = false;
      movingLeft = false;
      movingRight = false;
      pacman.moveDown();
    } else if (keyCode == LEFT) {
      movingLeft = true;
      movingUp = false;
      movingDown = false;
      movingRight = false;
      pacman.moveLeft();
    } else if (keyCode == RIGHT) {
      movingRight = true;
      movingLeft = false;
      movingDown = false;
      movingUp = false;
      pacman.moveRight();
    }
  }
}
