class GameBoard {
  PVector leftTopCorner;
  PVector size;
  PVector numOfGrids;
  GameBoard(PVector leftTopCorner, PVector size, PVector numOfGrids) {
    this.leftTopCorner = leftTopCorner;
    this.size = size;
    this.numOfGrids = numOfGrids;
  }
  void displayGameBoard(){
    strokeWeight(30);
    fill(#B2B2B2);
    rect(leftTopCorner.x, leftTopCorner.y, size.x, size.y);
    
  }
  
  
}
