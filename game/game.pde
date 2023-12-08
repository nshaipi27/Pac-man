int [][] grid1 = new int [28][30];
int [][] saveGrid = new int [28][30];
int pacmanCellX;
int pacmanCellY;
int ghostCellX;
int ghostCellY;

int [][] pelletGrid = new int [27][29];
int [][] savePelletGrid = new int [27][29];
int pacmanCellXOnPellet;
int pacmanCellYOnPellet;

boolean movingRight = false;
boolean movingLeft = false;
boolean movingUp = false;
boolean movingDown = false;

boolean goLeft = true;
boolean goRight = false;
boolean goUp = false;
boolean goDown = false;

int state = 0; 

//PFont font = createFont("tapper/tapper.ttf", 15);

Pacman pacman;
Maze maze;
Ghosts ghost1, ghost2, ghost3, ghost4;


Level l1;

void setup() {
  size(700, 680);
  pacman = new Pacman(80, 220, 2, 25);
  maze = new Maze();
  l1 = new Level(2, maze);
  print(grid1[0][0]);
  ghost1 = new Ghosts (600, 220, 2, 30);
}

void draw () {
  background(0);
  l1.update(maze, pacman);
  l1.render(maze, pacman, ghost1);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      movingUp = true;
      movingDown = false;
      movingLeft = false;
      movingRight = false;
    } else if (keyCode == DOWN) {
      movingDown = true;
      movingUp = false;
      movingLeft = false;
      movingRight = false;
    } else if (keyCode == LEFT) {
      movingLeft = true;
      movingUp = false;
      movingDown = false;
      movingRight = false;
    } else if (keyCode == RIGHT) {
      movingRight = true;
      movingLeft = false;
      movingDown = false;
      movingUp = false;
    }
  }
  
  if(state == 0){
    
  }
}
