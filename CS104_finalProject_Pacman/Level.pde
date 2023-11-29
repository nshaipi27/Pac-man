// logic to more easily manipulate the levels and how they operate
class Level{
  private int playerPosition;    
  private int ghostSpeed;
//instance variables to  
  private int score = 0
  private boolean gameOver = false;

  Level(int ghostSpeed){
    this.ghostSpeed = ghostSpeed;
  }

  int count = 0; 

  void update(){
    count++;
    //add
  }
  void movePlayerUp(){
    //if(){
    }
  }
  void movePlayerDown(){
  }
  void movePlayerLeft(){
  }
  void movePlayerRight(){
  }

  boolean levelCompleted(){
    boolean levelCompleted = true;
    for(int i = 0; i < ; i++){

    }
  }
  boolean levelFailed(){
    if(gameOver == true){
      return true;
    }
    else{
      return false;
   }
  }
}
