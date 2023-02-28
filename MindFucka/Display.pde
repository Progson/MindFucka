class GameBoard {
  PVector leftTopCorner;
  PVector size;
  PVector numOfGrids;
  ArrayList<Figure> figures = new ArrayList<Figure>();
  GameBoard(PVector leftTopCorner, PVector size, PVector numOfGrids) {
    this.leftTopCorner = leftTopCorner;
    this.size = size;
    this.numOfGrids = numOfGrids;
  }
  void setBoard(){
      figures.add(new Figure());
  }
  void displayGameBoard() {
    strokeWeight(30);
    fill(#B2B2B2);
    rect(leftTopCorner.x, leftTopCorner.y, size.x, size.y);
  }
  void displayFigures() {
    for (Figure i : figures) {
      PVector positionOfFigure = new PVector();
      positionOfFigure = callculatePosition();
      fill(0,0,255);
      ellipse(positionOfFigure.x, positionOfFigure.y,size.x/numOfGrids.x,size.y/numOfGrids.y);
    }
  }
  PVector callculatePosition() {
    
    return new PVector(400,400);
  }
}
