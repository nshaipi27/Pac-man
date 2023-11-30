int [][] grid1 = new int [28][30];
int [][] grid2;
int [][] grid3;

Level L1;
Level L2; 
Level L3; 

Characters test;
Maze testMaze;
void setup() {
  size(700, 680);
  test = new Characters(100, 100, 0.5, 20);
  testMaze = new Maze();
  L1.//first maze
  L2.//second maze
  L3.//third maze
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
    movePlayerUp();
  }
  if(keyPressed == DOWN){
    movePlayerDown();
  }
  if(keyPressed == LEFT){
    movePlayerLeft();
  }
  if(keyPressed == RIGHT){
    movePlayerRight();
  }
}

//coding system:
//cell is empty : 0
//cell has wall : 1
//cell has pacman : 2
//cell has ghost : 3
//cell has dot : 4
