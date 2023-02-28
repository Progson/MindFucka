class GameBoard {
  PVector leftTopCorner = new PVector();
  PVector size = new PVector();
  PVector numOfGrids = new PVector();
  PVector sizeOfCell = new PVector();
  ArrayList<Figure> figures = new ArrayList<Figure>();
  GameBoard(PVector leftTopCorner, PVector size, PVector numOfGrids) {
    this.leftTopCorner = leftTopCorner;
    this.size = size;
    this.numOfGrids = numOfGrids;
    this.sizeOfCell.x = size.x/numOfGrids.x;
    this.sizeOfCell.y = size.y/numOfGrids.y;
  }
  void setBoard() {
    figures.add(new Figure());
  }
  void displayGameBoard() {
    strokeWeight(4);
    fill(#B2B2B2);
    rect(leftTopCorner.x, leftTopCorner.y, size.x, size.y, 4);
    strokeWeight(1);
    for (int x = 0; x < numOfGrids.x; x++) {
        line(leftTopCorner.x + x * sizeOfCell.x,leftTopCorner.y,leftTopCorner.x + x * sizeOfCell.x,leftTopCorner.y+size.y);
    }
    for (int y = 0; y < numOfGrids.y; y++) {
       line(leftTopCorner.x,leftTopCorner.y + y * sizeOfCell.y,leftTopCorner.x + size.x,leftTopCorner.y + y * sizeOfCell.y);
      }
  }
  void displayFigures() {
    for (Figure i : figures) {
      PVector positionOfFigure = new PVector();
      positionOfFigure = callculatePosition(i.position);
      strokeWeight(2);
      fill(#B2B2B2);
      ellipse(positionOfFigure.x, positionOfFigure.y, sizeOfCell.x*0.8, sizeOfCell.y*0.8);
    }
  }
  PVector callculatePosition(PVector relativePostion) {
    return new PVector(leftTopCorner.x + relativePostion.x * sizeOfCell.x + sizeOfCell.x/2, leftTopCorner.y+size.y - relativePostion.y * sizeOfCell.y - sizeOfCell.y/2);
  }
}
