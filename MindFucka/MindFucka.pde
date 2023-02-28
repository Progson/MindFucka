GameBoard gameBoard;
PVector leftTopCornerOfGameBoard;
PVector sizeOfGameBoard;
PVector numOfGridsInGameBoard;
Buttons buttons;

void setup() {
  size(800, 800);
  background(#1FA09C);
  
  leftTopCornerOfGameBoard = new PVector(100, 100);
  sizeOfGameBoard = new PVector(600, 400);
  numOfGridsInGameBoard = new PVector(15, 10);
  
  buttons = new Buttons();
  buttons.setupButtons();
  
  gameBoard = new GameBoard(leftTopCornerOfGameBoard, sizeOfGameBoard, numOfGridsInGameBoard);
  gameBoard.setBoard();
}

void draw() {
  gameBoard.displayGameBoard();
  gameBoard.displayFigures();
  buttons.display();
  gameBoard.tickFigures();
}
