GameBoard gameBoard;
PVector leftTopCornerOfGameBoard;
PVector sizeOfGameBoard;
PVector numOfGridsInGameBoard;

void setup() {
  size(800, 800);
  leftTopCornerOfGameBoard = new PVector(100, 100);
  sizeOfGameBoard = new PVector(600, 400);
  numOfGridsInGameBoard = new PVector(15, 10);
  background(#1FA09C);
  gameBoard = new GameBoard(leftTopCornerOfGameBoard, sizeOfGameBoard, numOfGridsInGameBoard);
  gameBoard.setBoard();

}

void draw() {
  gameBoard.displayGameBoard();
  gameBoard.displayFigures();
}
