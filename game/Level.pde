class Level {
  int playerPositionY = 0;
  int playerPosititonX = 0;
  int ghostSpeed;
  int score = 0;
  int highScore = 0;
  boolean gameOver = false;
  boolean gameLost = false;

  Level(int ghostSpeed, Maze maze) {
    this.ghostSpeed = ghostSpeed;
    maze.initializeGrid1();
    maze.drawMaze();
    maze.placePellets();
    
  }

  void update(Maze maze, Pacman pacman) {
    maze.removePellet(pacman);
    maze.score();  
  }

  void render(Maze maze, Pacman pacman, Ghosts ghost1) {
    maze.drawMaze();
    maze.render1();
    maze.renderPellets();
    pacman.render();
    pacman.update(maze, pacman);
    ghost1.render();
    ghost1.update(maze, ghost1);
    
    //textFont(font);
    text("Score: " + maze.score(), 50, 50);
  }
  
  boolean checkGameOver(Pacman pacman, Ghosts ghost){
    if(ghost.checkPacCollision(pacman) == true){
      gameLost = false;
    }
    return gameLost; 
  }
  
}
