int [][] grid1 = new int [28][30];
int [][] grid2;
int [][] grid3;

void setup() {
  size(700, 680);
}

void draw () {
  int xPos = 50;
  int yPos = 60;
  int size = 20;

  for (int i = 0; i < 28; i++) {
    for (int j = 0; j < 30; j++) {
      if (i==0 || i == 27) {
        fill(0);
        grid1[i][j] = 1;
      } else if ((i < 13 || i > 14) && (j == 0 || j == 29)) {
        fill(0);
        grid1[i][j] = 1;
      } else if ((i == 8 || i == 12) && (j > 9 && j < 20)) {
        fill(0);
        grid1[i][j] = 1;
      } else if ((i > 8 && i < 12) && (j == 10 || j == 19)) {
        fill(0);
        grid1[i][j] = 1;
      } else if ((j == 4|| j==25) && ((i > 15 && i < 19) || (i < 12 && i > 8))) {
        fill(0);
        grid1[i][j] = 1;
      } else if (i == 20 && ((j > 7 && j < 13) || (j > 16 && j < 22))) {
        fill(0);
        grid1[i][j] = 1;
      } else if ( (i > 20 && i < 25) && (j == 10 || j == 19)) {
        fill(0);
        grid1[i][j] = 1;
      } else if ( (i == 17 || i == 3)&& (( j >= 12 && j <= 17))) {
        fill(0);
        grid1[i][j] = 1;
      } else if ((i == 16 || i == 15) && (j >= 14 && j < 16)) {
        fill(0);
        grid1[i][j] = 1;
      } else if ((i == 15 || i == 12 || i == 9 || i == 18) && ((j > 0 && j < 5) || (j > 24 && j < 29))) {
        fill(0);
        grid1[i][j] = 1;
      } else if ((j >= 14 && j<16) && (i == 4 || i == 5)) {
        fill(0);
        grid1[i][j] = 1;
      } else if ( (j == 3 || j == 26) && (i >= 3 && i <7)) {
        fill(0);
        grid1[i][j] = 1;
      } else if ( i == 3 && (((j > 3 && j < 8)|| j > 21 && j < 26))) {
        fill(0);
        grid1[i][j] = 1;
      } else if (( i == 24) && ((j > 2 && j < 6) || (j > 23 && j < 27))) {
        fill(0);
        grid1[i][j] = 1;
      } else if ( (i < 24 && i >= 21) && (j == 4 || j == 25)) {
        fill(0);
        grid1[i][j] = 1;
      } else if ((j == 7 || j == 22 ) && ((i > 12 && i < 18)|| (i> 5 && i < 11)) ) {
        fill(0);
        grid1[i][j] = 1;
      } else if (i == 23 && (j > 12 && j < 17)) {
        fill(0);
        grid1[i][j] = 1;
      } else {
        fill(255);
        grid1[i][j] = 0;
      }
      square(xPos, yPos, size);
      xPos += size;
    }
    xPos = 50;
    yPos += size;
  }
  yPos = 50;
}


//coding system:
//cell is empty : 0
//cell has wall : 1
//cell has pacman : 2
//cell has ghost : 3
//cell has dot : 4

