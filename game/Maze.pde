
class Maze {
  int xPos = 50;
  int yPos = 60;
  int size = 20;

  void initializeGrid1() {
    for (int i = 0; i < 28; i++) {
      for (int j = 0; j < 30; j++) {
        grid1[i][j] = 0;
      }
    }
  }

  void drawMaze() {
    for (int i = 0; i < 28; i++) {
      for (int j = 0; j < 30; j++) {
        if (i==0 || i == 27) {
          grid1[i][j] = 1;
        } else if ((i < 13 || i > 14) && (j == 0 || j == 29)) {
          grid1[i][j] = 1;
        } else if ((i == 8 || i == 12) && (j > 9 && j < 20)) {
          grid1[i][j] = 1;
        } else if ((i > 8 && i < 12) && (j == 10 || j == 19)) {
          grid1[i][j] = 1;
        } else if ((j == 4|| j==25) && ((i > 15 && i < 19) || (i < 12 && i > 8))) {
          grid1[i][j] = 1;
        } else if (i == 20 && ((j > 7 && j < 13) || (j > 16 && j < 22))) {
          grid1[i][j] = 1;
        } else if ( (i > 20 && i < 25) && (j == 10 || j == 19)) {
          grid1[i][j] = 1;
        } else if ( (i == 17 || i == 3)&& (( j >= 12 && j <= 17))) {
          grid1[i][j] = 1;
        } else if ((i == 16 || i == 15) && (j >= 14 && j < 16)) {
          grid1[i][j] = 1;
        } else if ((i == 15 || i == 12 || i == 9 || i == 18) && ((j > 0 && j < 5) || (j > 24 && j < 29))) {
          grid1[i][j] = 1;
        } else if ((j >= 14 && j<16) && (i == 4 || i == 5)) {
          grid1[i][j] = 1;
        } else if ( (j == 3 || j == 26) && (i >= 3 && i <7)) {
          grid1[i][j] = 1;
        } else if ( (i == 3) && (((j > 3 && j < 8)|| (j > 21 && j < 26)))) {
          grid1[i][j] = 1;
        } else if (( i == 24) && ((j > 2 && j < 6) || (j > 23 && j < 27))) {
          grid1[i][j] = 1;
        } else if ( (i < 24 && i >= 21) && (j == 4 || j == 25)) {
          grid1[i][j] = 1;
        } else if ((j == 7 || j == 22 ) && ((i > 12 && i < 18)|| (i> 5 && i < 11)) ) {
          grid1[i][j] = 1;
        } else if (i == 23 && (j > 12 && j < 17)) {
          grid1[i][j] = 1;
        } else {
          fill(255);
          grid1[i][j] = 0;
        }
      }
    }
  }

  void render1() {
    drawMaze();

    for (int i = 0; i < 28; i++) {
      for (int j = 0; j < 30; j++) {
        if (grid1[i][j] == 1) {
          fill(0);
          square(xPos, yPos, size);
        } else {
          fill(255);
        }
        saveGrid[i][j] = grid1[i][j];
        // print (saveGrid[i][j]);

        square(xPos, yPos, size);
        xPos += size;
      }
      xPos = 50;
      yPos += size;
    }
    yPos = 60;
  }


  boolean pacmanCollidedWithWall(Pacman pacman) {
    //this should be initially returning false? idk why true

    // this part is wring. fix it
    //if(movingRight == true){
    //  pacmanCellX = (int) (pacman.getXPosWhenRight() - xPos) / size;
    //} else if(movingLeft == true){
    // pacmanCellX = (int) (pacman.getXPosWhenLeft() - xPos) / size;
    //} else if(movingUp){
    //pacmanCellY = (int) (pacman.getYPosWhenUp() - yPos) / size;
    //} else if(movingDown){
    //pacmanCellY= (int) (pacman.getYPosWhenDown() - yPos) / size;
    //}
    pacmanCellX = (int) (pacman.getCenterX() - xPos) / size;
    pacmanCellY = (int) (pacman.getCenterY() - yPos) / size;
    // print(pacmanCellX + " " + pacmanCellY + " ");
    for (int i = 0; i < 28; i++) {
      for (int j = 0; j < 30; j++) {
        if (grid1[pacmanCellY][pacmanCellX] == 1) {
          // print(grid1[pacmanCellX][pacmanCellY]);
          return true;
        }
      }
    }
    return false;
  }



  //this goes into level
  void renderPac(Pacman pacman, Maze maze) {
    pacman.render();
    pacman.update(maze, pacman);
  }
}
