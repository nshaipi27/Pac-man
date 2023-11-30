int [][] grid1 = new int [28][30];
int [][] grid2;
int [][] grid3;

Characters test;
Maze testMaze;
void setup() {
  size(700, 680);
  test = new Characters(100, 100, 0.5, 20);
  testMaze = new Maze();
}

void draw () {
  background(155);
  testMaze.render1();
  test.render();
  test.update();
  textSize(40);
  text("Score:" + " " + score, 40, 50);
  text("High Score:" + " " + highScore, 420, 50); 
}

void keyPressed(){
  if(keyPressed == UP){

  }
  if(keyPressed == DOWN){

  }
  if(keyPressed == LEFT){

  }
  if(keyPressed == RIGHT){

  }
}

//coding system:
//cell is empty : 0
//cell has wall : 1
//cell has pacman : 2
//cell has ghost : 3
//cell has dot : 4
