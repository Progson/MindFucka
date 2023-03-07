GameBoard gameBoard;
PVector leftTopCornerOfGameBoard;
PVector sizeOfGameBoard;
PVector numOfGridsInGameBoard;
Buttons buttons;
FigureSetupManager fsm;
enum TypesOfFigures{
  Arrow;
};

void setup() {
  size(800, 800);
  background(#1FA09C);
  
  leftTopCornerOfGameBoard = new PVector(100, 100);
  sizeOfGameBoard = new PVector(600, 400);
  numOfGridsInGameBoard = new PVector(15, 10);
  
  fsm = new FigureSetupManager();
  
  buttons = new Buttons();
  buttons.setupButtons();
  
  gameBoard = new GameBoard(leftTopCornerOfGameBoard, sizeOfGameBoard, numOfGridsInGameBoard);
  gameBoard.setBoard();
  
  frameRate(1);
}

void draw() {
  background(#1FA09C);
  gameBoard.displayGameBoard();
  gameBoard.displayFigures();
  buttons.display();
  gameBoard.tickFigures();
  ellipse(mousePressedPosition.x,  mousePressedPosition.y,50,50);
}
