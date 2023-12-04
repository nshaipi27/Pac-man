// logic to more easily manipulate the levels and how they operate
class Level {
  //instance variables
  int playerPositionY = 0;
  int playerPosititonX = 0;
  int ghostSpeed;
  int score = 0;
  int highScore = 0;
  boolean gameOver = false;

  Level(int ghostSpeed, Maze maze) {
    this.ghostSpeed = ghostSpeed;
    maze.initializeGrid1();
    maze.drawMaze();
    maze.placePellets();
  }

  void update(Maze maze, Pacman pacman) {
    maze.checkSmallPelletCollision(pacman);
    maze.removePellet(pacman);// when placed here, it removes every pellet. Fix this tomorrow in class
  }

  void render(Maze maze, Pacman pacman) {
    maze.drawMaze();
    maze.render1();
    maze.renderPellets();
    pacman.render();
    pacman.update(maze, pacman);
  }
}
